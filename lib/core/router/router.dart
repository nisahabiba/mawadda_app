import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:mawadda_app/home/pages/home_page.dart';

import '../../auth/pages/auth_page.dart';
import '../../auth/pages/login_page.dart';
import '../../auth/pages/register_page.dart';
import '../../auth/pages/succeed_signup.dart';
import '../../home/pages/articles/articles_page.dart';
import '../../home/pages/home_navigation_page.dart';
import '../../home/pages/home_view.dart';
import '../../main.dart';
import '../../mission/pages/mission_page.dart';
import '../../profile/pages/edit_profile_page.dart';
import '../../profile/pages/profile_navigation_page.dart';
import '../../profile/pages/profile_page.dart';
import '../../home/pages/videos/videos_page.dart';

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
      page: HomeRoute.page,
      children: [
        AutoRoute(page: HomeNavigationRoute.page, children: [
          AutoRoute(
            page: HomeRouteView.page,
          ),
          AutoRoute(
            page: ArticlesRoute.page,
          ),
          AutoRoute(
            page: VideosRoute.page,
          ),
        ]),
        AutoRoute(
          page: MissionRoute.page,
        ),
        AutoRoute(
          page: ProfileNavigationRoute.page,
          children: [
            AutoRoute(
              page: ProfileRoute.page,
            ),
            AutoRoute(
              page: EditProfileRoute.page,
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      page: AuthRoute.page,
    ),
    AutoRoute(
      page: LoginRoute.page,
    ),
    AutoRoute(
      page: RegisterRoute.page,
    ),
    AutoRoute(
      page: SucceedSignUpRoute.page,
    ),
  ];
}
