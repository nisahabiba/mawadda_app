import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/auth/bloc/bloc/auth_bloc.dart';

import 'auth/bloc/login/login_bloc.dart';
import 'auth/bloc/register/register_cubit.dart';
import 'core/di/injector.dart';

import 'core/router/router.dart';
import 'firebase_options.dart';
import 'profile/bloc/navigation/profile_navigation_cubit.dart';

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
          // routerDelegate: _appRouter.delegate(),
          // routeInformationParser: _appRouter.defaultRouteParser(),
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
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => context.replaceRoute(
          const AuthRoute(),
        ),
        authenticated: () => context.replaceRoute(
          const HomeRoute(),
        ),
        unAuthenticated: () => context.replaceRoute(
          const AuthRoute(),
        ),
      ),
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
