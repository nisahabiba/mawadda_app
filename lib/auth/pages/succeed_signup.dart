import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/router/router.dart';

@RoutePage()
class SucceedSignUpPage extends StatelessWidget {
  const SucceedSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image_back.png"), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.all(10.r),
        child: Center(
          child: ListView(
            children: [
              Image.asset(
                'assets/door_illustration.png',
                height: 0.3.sh,
              ),
              DefaultTextStyle(
                style: GoogleFonts.averiaGruesaLibre(color: Colors.black),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10.r,
                    right: 10.r,
                  ),
                  height: 0.65.sh,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 290.h,
                        width: 290.w,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.black),
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'You are in!',
                                style: TextStyle(
                                  fontSize: 32.sp,
                                ),
                              ),
                              Text(
                                "Login to start your journey",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        height: 90.h,
                        padding: EdgeInsets.only(
                          left: 10.r,
                          right: 10.r,
                        ),
                        width: 290.w,
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.black),
                            color: const Color(0xffDFDCEF),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              height: 38.h,
                              width: 0.8.sw,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffFAC6EA),
                                    side: const BorderSide(
                                        width: 3.0, color: Colors.black)),
                                onPressed: () {
                                  context.router.replace(const LoginRoute());
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
