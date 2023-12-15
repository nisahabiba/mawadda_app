import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mawadda_app/auth/pages/succeed_signup.dart';
import 'package:mawadda_app/core/page/webview_page.dart';
import 'package:mawadda_app/home/pages/articles/articles_page.dart';
import 'package:mawadda_app/home/pages/home_navigation_page.dart';
import 'package:mawadda_app/home/pages/home_page.dart';
import 'package:mawadda_app/home/pages/home_view.dart';
import 'package:mawadda_app/home/pages/videos/videos_page.dart';
import 'package:mawadda_app/mission/pages/mission_completed_page.dart';
import 'package:mawadda_app/mission/pages/mission_navigation_page.dart';
import 'package:mawadda_app/mission/pages/mission_sub_topic_page.dart';
import 'package:mawadda_app/mission/pages/mission_sub_topic_radio_page.dart';
import 'package:mawadda_app/mission/pages/mission_topic_page.dart';
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

@singleton
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
    AutoRoute(
      page: RegisterRoute.page,
    ),
    AutoRoute(
      page: SucceedRoute.page,
    ),
    AutoRoute(page: SucceedRoute.page),
    AutoRoute(page: HomeRoute.page, children: [
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
        page: MissionNavigationRoute.page,
        children: [
          AutoRoute(
            page: MissionRoute.page,
          ),
          AutoRoute(
            page: MissionTopicRoute.page,
          ),
          AutoRoute(
            page: MissionSubTopicRoute.page,
          ),
          AutoRoute(
            page: MissionSubTopicRadioRoute.page,
          ),
        ],
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
    AutoRoute(
      page: WebViewRoute.page,
    ),
  ];
}
