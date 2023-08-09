// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../auth/pages/auth_page.dart';
import '../../core/router/router.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const AuthPage(),
                //   ),
                // );
                context.router.replace(const AuthRoute());
              },
              icon: const Icon(Icons.logout, color: Colors.black))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: GoogleFonts.averiaGruesaLibre(),
        selectedLabelStyle: GoogleFonts.averiaGruesaLibre(),
        backgroundColor: const Color(0xffDFDCEF),
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
              color: Colors.black,
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
              color: Colors.black,
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
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image_back.png"), fit: BoxFit.cover),
          ),
        )
      ][currentPageIndex],
    );
  }
}
