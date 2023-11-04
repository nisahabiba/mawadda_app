import 'package:auto_route/auto_route.dart';
import 'package:mawadda_app/home/pages/home_page.dart';

import '../../auth/pages/auth_page.dart';
import '../../auth/pages/login_page.dart';
import '../../auth/pages/register_page.dart';
import '../../home/pages/home_view.dart';
import '../../main.dart';
import '../../mission/pages/mission_page.dart';
import '../../profile/pages/edit_profile_page.dart';
import '../../profile/pages/profile_navigation_page.dart';
import '../../profile/pages/profile_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      // path: '/',
      initial: true,
      page: MainRoute.page,
    ),
    AutoRoute(
      // path: '/home',
      page: HomeRoute.page,
      // initial: true,
      children: [
        AutoRoute(
          // path: 'home_view',
          page: HomeRouteView.page,
        ),
        AutoRoute(
          // path: 'mission',
          page: MissionRoute.page,
        ),
        AutoRoute(
          page: ProfileNavigationRoute.page,
          children: [
            AutoRoute(
              // path: 'profile',
              page: ProfileRoute.page,
            ),
            AutoRoute(
              // path: 'edit_profile',
              page: EditProfileRoute.page,
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      // path: '/auth',
      page: AuthRoute.page,
    ),
    AutoRoute(
      // path: '/login',
      page: LoginRoute.page,
    ),
  ];
}
