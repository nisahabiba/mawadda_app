// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/profile/pages/edit_profile_page.dart';

import '../../auth/pages/auth_page.dart';
import '../../core/router/router.dart';
import '../bloc/navigation/profile_navigation_cubit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileNavigationCubit, ProfileNavigationState>(
        builder: (context, state) {
      if (state == const EditProfileSt()) {
        return const EditProfilePage();
      } else {
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
                height: 0.25.sh,
                width: 329.w,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text("(Username)"),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text("email_here@gmail.com"),
                    SizedBox(
                      height: 5.h,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFB4B0CE),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        context.read<ProfileNavigationCubit>().changePage(
                              CurrentProfilePage.editProfilePage,
                            );
                      },
                      child: Text(
                        'Edit Profile',
                        style: GoogleFonts.averiaGruesaLibre(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Text("Your Progress",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24)),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Container(
                        width: 1.sw,
                        height: 100.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.check_circle,
                              size: 40.0,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            const Text(
                                "You have completed Sub-Topic 1 from: \n“Health & Pregnancy” topic"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      }
    });
  }
}
