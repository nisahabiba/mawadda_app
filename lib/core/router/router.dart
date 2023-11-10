import 'package:auto_route/auto_route.dart';
import 'package:mawadda_app/auth/pages/succeed_signup.dart';
import 'package:mawadda_app/home/pages/home_page.dart';
import 'package:mawadda_app/home/pages/home_view.dart';
import 'package:mawadda_app/mission/pages/mission_page.dart';
//import 'package:mawadda_app/profile/bloc/navigation/profile_navigation_cubit.dart';
import 'package:mawadda_app/profile/pages/edit_profile_page.dart';
import 'package:mawadda_app/profile/pages/profile_navigation_page.dart';
import 'package:mawadda_app/profile/pages/profile_page.dart';

import '../../auth/pages/auth_page.dart';
import '../../auth/pages/login_page.dart';
import '../../auth/pages/register_page.dart';
import '../../main.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      initial: true,
      page: MainRoute.page,
    ),
    AutoRoute(
      page: AuthRoute.page,
    ),
    AutoRoute(
      page: LoginRoute.page,
    ),
    AutoRoute(page: SucceedRoute.page),
    AutoRoute(page: HomeRoute.page, children: [
      AutoRoute(
        page: HomeRouteView.page,
      ),
      AutoRoute(
        page: MissionRoute.page,
      ),
      AutoRoute(page: ProfileNavigationRoute.page, children: [
        AutoRoute(
          page: ProfileRoute.page,
        ),
        AutoRoute(
          page: EditProfileRoute.page,
        ),
      ]),
    ]),
  ];
}
