// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mawadda_app/auth/components/auth_form_component.dart';
import 'package:mawadda_app/auth/pages/register_page.dart';
import 'package:mawadda_app/auth/pages/succeed_signup.dart';

// class MyMainPage extends StatelessWidget {
//   const MyMainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Mawadda';

//     return MaterialApp(
//       title: appTitle,
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//           backgroundColor: Color(0xFFA04452),
//           actions: <Widget>[
//             IconButton(onPressed: () {}, icon: Icon(Icons.logout))
//           ],
//         ),
//         body: Container(
//             height: 1.sh,
//             color: const Color(0XFFFFD4AB),
//             padding: EdgeInsets.all(10.r)),
//       ),
//     );
//   }
// }
//---------------------------

@RoutePage()
class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationMain());
  }
}

class NavigationMain extends StatefulWidget {
  const NavigationMain({super.key});

  @override
  State<NavigationMain> createState() => _NavigationMainState();
}

class _NavigationMainState extends State<NavigationMain> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mawadda'),
        backgroundColor: const Color(0xFFA04452),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.logout))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xffFFD4AB),
        unselectedLabelStyle: GoogleFonts.averiaGruesaLibre(),
        selectedLabelStyle: GoogleFonts.averiaGruesaLibre(),
        backgroundColor: const Color(0xffA04452),
        selectedFontSize: 15.sp,
        unselectedFontSize: 15.sp,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        currentIndex: currentPageIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flag_outlined,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.flag,
              color: Colors.white,
            ),
            label: 'Missions',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: const Color(0XFFFFD4AB),
          alignment: Alignment.center,
          child: DefaultTextStyle(
            style: GoogleFonts.averiaGruesaLibre(color: Colors.white),
            child: ListView(
              children: [
                Image.asset('assets/main_header.png'),

//--------------Container-1 [Check Profile]
                Container(
                  padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Card(
                        elevation: 0,
                        color: const Color(0xFFBC7568),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: SizedBox(
                          width: 1.sw,
                          height: 100,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'Have you completed\nyour profile?',
                                  style: GoogleFonts.averiaGruesaLibre(
                                      color: Colors.white, fontSize: 16.sp),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFFF0677C),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: const Text('Check Profile'))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

//-------------Container-2 [Start Mission]
                Container(
                  padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: SizedBox(
                          width: 1.sw,
                          height: 200,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Let's Start\nthe Missions",
                                      style: GoogleFonts.averiaGruesaLibre(
                                          color: const Color(0xFFF0677C),
                                          fontSize: 20.sp),
                                    ),
                                    Text(
                                      'Learn something\nnew to prepare\nyourself for\nmarriage',
                                      style: GoogleFonts.averiaGruesaLibre(
                                          color: const Color(0xFFFEB9D73),
                                          fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icon_mission.png',
                                      width: 0.35.sw,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFF0677C),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {},
                                        child: const Text('Start'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

//-------------Container-3 [Articles]
                Container(
                  padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Card(
                        elevation: 0,
                        color: Color(0xFFBC7568),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: SizedBox(
                          width: 1.sw,
                          height: 200,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Recent\nArticles",
                                      style: GoogleFonts.averiaGruesaLibre(
                                          color: Colors.white, fontSize: 20.sp),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      'No time to complete\nmission? It’s OK!\nLet’s read some new\ninsights here.',
                                      style: GoogleFonts.averiaGruesaLibre(
                                          color: Colors.white, fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icon_articles.png',
                                      width: 0.35.sw,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFF0677C),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {},
                                        child: const Text('Read More'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

//-------------Container-4 [Videos]
                Container(
                  padding: EdgeInsets.only(
                      top: 10.r, left: 10.r, right: 10.r, bottom: 10.r),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Card(
                        elevation: 0,
                        color: Color(0xFFBC7568),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: SizedBox(
                          width: 1.sw,
                          height: 200,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Watch\nVideos",
                                      style: GoogleFonts.averiaGruesaLibre(
                                          color: Colors.white, fontSize: 20.sp),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      'Easy way to get\nmore pre-marital\nknowledge on your\nleisure time!',
                                      style: GoogleFonts.averiaGruesaLibre(
                                          color: Colors.white, fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icon_videos.png',
                                      width: 0.35.sw,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFF0677C),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {},
                                        child: const Text('Watch More'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: const Color(0XFFFFD4AB),
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: const Color(0XFFFFD4AB),
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
