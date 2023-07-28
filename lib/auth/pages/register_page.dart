import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/auth/components/auth_form_component.dart';
import 'package:mawadda_app/auth/pages/login_page.dart';
import 'package:mawadda_app/auth/pages/succeed_signup.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameCtr = TextEditingController();
    final emailCtr = TextEditingController();
    final passwordCtr = TextEditingController();
    final confirmPasswordCtr = TextEditingController();

    return Scaffold(
        body: Container(
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
                      height: 93.h,
                      width: 290.w,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.black),
                          color: Color(0xffDFDCEF),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Register Yourself',
                              style: TextStyle(
                                fontSize: 32.sp,
                              ),
                            ),
                            Text(
                              "to start a new journey",
                              style: TextStyle(
                                fontSize: 20.sp,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: 0.45.sh,
                      padding: EdgeInsets.only(
                        left: 10.r,
                        right: 10.r,
                      ),
                      width: 290.w,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.black),
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          AuthFormComponent(
                            formKey: 'name',
                            controller: nameCtr,
                            hintText: 'Your Name',
                            textInputType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AuthFormComponent(
                            formKey: 'email',
                            controller: emailCtr,
                            hintText: 'Your Email',
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AuthFormComponent(
                            formKey: 'password',
                            controller: passwordCtr,
                            hintText: 'Set your password',
                            textInputType: TextInputType.number,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          AuthFormComponent(
                            formKey: 'confirm_password',
                            controller: confirmPasswordCtr,
                            hintText: 'Confirm your password',
                            textInputType: TextInputType.number,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 38.h,
                            width: 0.8.sw,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffFAC6EA),
                                  side: BorderSide(
                                      width: 3.0, color: Colors.black)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SucceedPage(),
                                  ),
                                );
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '*if you have already created any account, please',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 9.sp,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
            // DefaultTextStyle(
            //     style: GoogleFonts.averiaGruesaLibre(color: Colors.white),
            //     child: Container(
            //       padding: EdgeInsets.only(
            //         left: 10.r,
            //         right: 10.r,
            //       ),
            //       height: 0.65.sh,
            //       child: Stack(
            //         alignment: AlignmentDirectional.topCenter,
            //         children: [
            //           SvgPicture.asset(
            //             'assets/gradient_card.svg',
            //             width: 1.sw,
            //           ),
            //           ListView(),
            //           Column(
            //             children: [
            //               SizedBox(
            //                 height: 40.h,
            //               ),
            //               Text(
            //                 'Register Yourself',
            //                 style: TextStyle(
            //                   fontSize: 32.sp,
            //                 ),
            //               ),
            //               Text(
            //                 "to start a new journey",
            //                 style: TextStyle(
            //                   fontSize: 20.sp,
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 20.h,
            //               ),
            //               AuthFormComponent(
            //                 formKey: 'name',
            //                 controller: nameCtr,
            //                 hintText: 'Your Name',
            //                 textInputType: TextInputType.text,
            //               ),
            //               SizedBox(
            //                 height: 20.h,
            //               ),
            //               AuthFormComponent(
            //                 formKey: 'email',
            //                 controller: emailCtr,
            //                 hintText: 'Your Email',
            //                 textInputType: TextInputType.emailAddress,
            //               ),
            //               SizedBox(
            //                 height: 20.h,
            //               ),
            //               AuthFormComponent(
            //                 formKey: 'password',
            //                 controller: passwordCtr,
            //                 hintText: 'Set your password',
            //                 textInputType: TextInputType.number,
            //               ),
            //               SizedBox(
            //                 height: 20.h,
            //               ),
            //               AuthFormComponent(
            //                 formKey: 'confirm_password',
            //                 controller: confirmPasswordCtr,
            //                 hintText: 'Confirm your password',
            //                 textInputType: TextInputType.number,
            //               ),
            //               SizedBox(
            //                 height: 20.h,
            //               ),
            //               SizedBox(
            //                 height: 38.h,
            //                 width: 0.8.sw,
            //                 child: ElevatedButton(
            //                   style: ElevatedButton.styleFrom(
            //                       backgroundColor: const Color(0xff70303A)),
            //                   onPressed: () {
            //                     Navigator.pushReplacement(
            //                         context,
            //                         MaterialPageRoute(
            //                             builder: (context) => SucceedPage()));
            //                   },
            //                   child: const Text(
            //                     'Sign Up',
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 15.h,
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text(
            //                     '*if you dont have created any account, please',
            //                     style: TextStyle(
            //                       color: const Color(0xff70303A),
            //                       fontSize: 9.sp,
            //                     ),
            //                   ),
            //                   GestureDetector(
            //                     onTap: () {
            //                       Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                               builder: (context) => LoginPage()));
            //                     },
            //                     child: Text(
            //                       'Login',
            //                       style: TextStyle(
            //                         color: const Color(0xffCB442B),
            //                         fontSize: 9.sp,
            //                         fontWeight: FontWeight.w600,
            //                         decoration: TextDecoration.underline,
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               )
            //             ],
            //           )
            //         ],
            //       ),
            //     ))
          ],
        ),
      ),
    ));
  }
}
