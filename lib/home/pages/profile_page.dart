// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/home/pages/edit_profile_page.dart';

import '../../auth/pages/auth_page.dart';
import '../../core/router/router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/image_back.png"), fit: BoxFit.cover),
      ),
      child: DefaultTextStyle(
        style: GoogleFonts.averiaGruesaLibre(color: Colors.black),
        child: ListView(children: [
          Container(
            height: 150.h,
            width: 329.w,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Icon(
                  Icons.person_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text("(Username)"),
                SizedBox(
                  height: 5.h,
                ),
                Text("email_here@gmail.com"),
                SizedBox(
                  height: 5.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB4B0CE),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfilePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Edit Profile',
                    style: GoogleFonts.averiaGruesaLibre(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
