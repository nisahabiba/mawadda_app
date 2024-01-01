// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ArticlesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ArticlesPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfilePage(),
      );
    },
    HomeNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeNavigationPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HomeRouteView.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePageView(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    MissionCompletedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionCompletedPage(),
      );
    },
    MissionNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionNavigationPage(),
      );
    },
    MissionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionPage(),
      );
    },
    MissionSubTopicRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicPage(),
      );
    },
    MissionSubTopicRoute1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicPage1(),
      );
    },
    MissionSubTopicRoute2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicPage2(),
      );
    },
    MissionSubTopicRoute3.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicPage3(),
      );
    },
    MissionSubTopicRoute4.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicPage4(),
      );
    },
    MissionSubTopicRoute5.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicPage5(),
      );
    },
    MissionSubTopicRadioRoute1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicRadioPage1(),
      );
    },
    MissionSubTopicRadioRoute2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicRadioPage2(),
      );
    },
    MissionSubTopicRadioRoute3.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicRadioPage3(),
      );
    },
    MissionSubTopicRadioRoute4.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicRadioPage4(),
      );
    },
    MissionSubTopicRadioRoute5.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MissionSubTopicRadioPage5(),
      );
    },
    MissionTopicRoute.name: (routeData) {
      final args = routeData.argsAs<MissionTopicRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MissionTopicPage(
          key: args.key,
          title: args.title,
          subTitle: args.subTitle,
          subTitleDetails: args.subTitleDetails,
          subTopic1: args.subTopic1,
          subTopic2: args.subTopic2,
          ref1: args.ref1,
          ref2: args.ref2,
          ref3: args.ref3,
          imageTopic: args.imageTopic,
        ),
      );
    },
    ProfileNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileNavigationPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    SucceedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SucceedPage(),
      );
    },
    VideosRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VideosPage(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WebViewPage(url: args.url),
      );
    },
  };
}

/// generated route for
/// [ArticlesPage]
class ArticlesRoute extends PageRouteInfo<void> {
  const ArticlesRoute({List<PageRouteInfo>? children})
      : super(
          ArticlesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticlesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfilePage]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeNavigationPage]
class HomeNavigationRoute extends PageRouteInfo<void> {
  const HomeNavigationRoute({List<PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePageView]
class HomeRouteView extends PageRouteInfo<void> {
  const HomeRouteView({List<PageRouteInfo>? children})
      : super(
          HomeRouteView.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteView';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionCompletedPage]
class MissionCompletedRoute extends PageRouteInfo<void> {
  const MissionCompletedRoute({List<PageRouteInfo>? children})
      : super(
          MissionCompletedRoute.name,
          initialChildren: children,
        );

  static const String name = 'MissionCompletedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionNavigationPage]
class MissionNavigationRoute extends PageRouteInfo<void> {
  const MissionNavigationRoute({List<PageRouteInfo>? children})
      : super(
          MissionNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MissionNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionPage]
class MissionRoute extends PageRouteInfo<void> {
  const MissionRoute({List<PageRouteInfo>? children})
      : super(
          MissionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MissionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicPage]
class MissionSubTopicRoute extends PageRouteInfo<void> {
  const MissionSubTopicRoute({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRoute.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicPage1]
class MissionSubTopicRoute1 extends PageRouteInfo<void> {
  const MissionSubTopicRoute1({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRoute1.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRoute1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicPage2]
class MissionSubTopicRoute2 extends PageRouteInfo<void> {
  const MissionSubTopicRoute2({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRoute2.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRoute2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicPage3]
class MissionSubTopicRoute3 extends PageRouteInfo<void> {
  const MissionSubTopicRoute3({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRoute3.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRoute3';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicPage4]
class MissionSubTopicRoute4 extends PageRouteInfo<void> {
  const MissionSubTopicRoute4({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRoute4.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRoute4';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicPage5]
class MissionSubTopicRoute5 extends PageRouteInfo<void> {
  const MissionSubTopicRoute5({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRoute5.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRoute5';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicRadioPage1]
class MissionSubTopicRadioRoute1 extends PageRouteInfo<void> {
  const MissionSubTopicRadioRoute1({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRadioRoute1.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRadioRoute1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicRadioPage2]
class MissionSubTopicRadioRoute2 extends PageRouteInfo<void> {
  const MissionSubTopicRadioRoute2({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRadioRoute2.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRadioRoute2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicRadioPage3]
class MissionSubTopicRadioRoute3 extends PageRouteInfo<void> {
  const MissionSubTopicRadioRoute3({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRadioRoute3.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRadioRoute3';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicRadioPage4]
class MissionSubTopicRadioRoute4 extends PageRouteInfo<void> {
  const MissionSubTopicRadioRoute4({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRadioRoute4.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRadioRoute4';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionSubTopicRadioPage5]
class MissionSubTopicRadioRoute5 extends PageRouteInfo<void> {
  const MissionSubTopicRadioRoute5({List<PageRouteInfo>? children})
      : super(
          MissionSubTopicRadioRoute5.name,
          initialChildren: children,
        );

  static const String name = 'MissionSubTopicRadioRoute5';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MissionTopicPage]
class MissionTopicRoute extends PageRouteInfo<MissionTopicRouteArgs> {
  MissionTopicRoute({
    Key? key,
    required String title,
    required String subTitle,
    required String subTitleDetails,
    required String subTopic1,
    required String subTopic2,
    required String ref1,
    required String ref2,
    required String ref3,
    required String imageTopic,
    List<PageRouteInfo>? children,
  }) : super(
          MissionTopicRoute.name,
          args: MissionTopicRouteArgs(
            key: key,
            title: title,
            subTitle: subTitle,
            subTitleDetails: subTitleDetails,
            subTopic1: subTopic1,
            subTopic2: subTopic2,
            ref1: ref1,
            ref2: ref2,
            ref3: ref3,
            imageTopic: imageTopic,
          ),
          initialChildren: children,
        );

  static const String name = 'MissionTopicRoute';

  static const PageInfo<MissionTopicRouteArgs> page =
      PageInfo<MissionTopicRouteArgs>(name);
}

class MissionTopicRouteArgs {
  const MissionTopicRouteArgs({
    this.key,
    required this.title,
    required this.subTitle,
    required this.subTitleDetails,
    required this.subTopic1,
    required this.subTopic2,
    required this.ref1,
    required this.ref2,
    required this.ref3,
    required this.imageTopic,
  });

  final Key? key;

  final String title;

  final String subTitle;

  final String subTitleDetails;

  final String subTopic1;

  final String subTopic2;

  final String ref1;

  final String ref2;

  final String ref3;

  final String imageTopic;

  @override
  String toString() {
    return 'MissionTopicRouteArgs{key: $key, title: $title, subTitle: $subTitle, subTitleDetails: $subTitleDetails, subTopic1: $subTopic1, subTopic2: $subTopic2, ref1: $ref1, ref2: $ref2, ref3: $ref3, imageTopic: $imageTopic}';
  }
}

/// generated route for
/// [ProfileNavigationPage]
class ProfileNavigationRoute extends PageRouteInfo<void> {
  const ProfileNavigationRoute({List<PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SucceedPage]
class SucceedRoute extends PageRouteInfo<void> {
  const SucceedRoute({List<PageRouteInfo>? children})
      : super(
          SucceedRoute.name,
          initialChildren: children,
        );

  static const String name = 'SucceedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideosPage]
class VideosRoute extends PageRouteInfo<void> {
  const VideosRoute({List<PageRouteInfo>? children})
      : super(
          VideosRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideosRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WebViewPage]
class WebViewRoute extends PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(url: url),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const PageInfo<WebViewRouteArgs> page =
      PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({required this.url});

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{url: $url}';
  }
}
