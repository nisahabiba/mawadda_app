// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mawadda_app/articles/pages/articles_page.dart';
import 'package:mawadda_app/core/navigation/bloc/navigation_bloc.dart';
import 'package:mawadda_app/home/pages/home_view.dart';
import 'package:mawadda_app/profile/bloc/navigation/profile_navigation_cubit.dart';
import 'package:mawadda_app/profile/pages/edit_profile_page.dart';
import 'package:mawadda_app/videos/pages/videos_page.dart';

import '../../auth/pages/auth_page.dart';
import '../../core/router/router.dart';
import '../../mission/pages/mission_page.dart';
import '../../profile/pages/profile_page.dart';

// import 'package:mawadda_app/auth/components/auth_form_component.dart';
// import 'package:mawadda_app/auth/pages/register_page.dart';
// import 'package:mawadda_app/auth/pages/succeed_signup.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouteView(),
        // ProfileNavigationRoute(),
        MissionRoute(),
        ProfileRoute(),
        // EditProfileRoute(),
      ],
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          centerTitle: true,
          title: Text(
            'Mawadda',
            style: GoogleFonts.dawningOfANewDay(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xffD1B1BE),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  context.replaceRoute(const AuthRoute());
                  // context.router.replace(const AuthRoute());
                  // context.read<NavigationBloc>().add(const AuthEv());
                },
                icon: const Icon(Icons.logout, color: Colors.black))
          ],
        );
      },
      transitionBuilder: (context, child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          // onDestinationSelected: (int index) {
          //   setState(() {
          //     currentPageIndex = index;
          //   });
          // },
          // indicatorColor: const Color(0xffB4B0CE),
          // selectedIndex: tabsRouter.activeIndex,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.flag_outlined,
                color: Colors.black,
              ),
              label: 'Missions',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
