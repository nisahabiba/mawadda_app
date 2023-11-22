import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mawadda_app/auth/bloc/auth/auth_bloc.dart';
import 'package:mawadda_app/auth/bloc/register/register_cubit.dart';
import 'firebase_options.dart';
import 'core/di/injector.dart';
import 'core/navigation/bloc/navigation_bloc.dart';
import 'core/router/router.dart';
import 'profile/bloc/navigation/profile_navigation_cubit.dart';
import 'auth/bloc/login/login_bloc.dart';
import 'package:mawadda_app/home/pages/home_page.dart';
import 'package:mawadda_app/auth/pages/login_page.dart';

void main() {
  mainApp();
}

void mainApp() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureInjector();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<NavigationBloc>()..add(const AppStartedEv()),
        ),
        BlocProvider(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.appStarted()),
        ),
        BlocProvider(
          create: (_) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<RegisterCubit>(),
        ),
        BlocProvider(
          create: (_) => getIt<ProfileNavigationCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 720),
        splitScreenMode: true,
        ensureScreenSize: true,
        child: MaterialApp.router(
          theme: ThemeData(
            useMaterial3: true,
            textTheme: GoogleFonts.averiaGruesaLibreTextTheme(),
          ),
          routerConfig: _appRouter.config(),
          key: _appRouter.key,
          //routerDelegate: _appRouter.delegate(),
          //routeInformationParser: _appRouter.defaultRouteParser()),
        ),
      ),
    );
  }
}

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        debugPrint('Navigation State : $state');

        if (state == const AuthSt()) {
          //context.router.replace(const AuthRoute());
          //return const LoginPage();
          context.replaceRoute(const AuthRoute());
        }

        if (state == const HomeSt()) {
          // context.router.replace(const LoginRoute());
          //return const HomePage();
          context.replaceRoute(const HomeRoute());
        }
        return Container(
          color: Colors.white,
        );
      },
    );
  }
}
