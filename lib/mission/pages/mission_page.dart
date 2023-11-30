import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';

@RoutePage()
class MissionPage extends StatefulWidget {
  const MissionPage({super.key});

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  @override
  Widget build(BuildContext context) {
    int selectedOption = 1;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/image_back.png"), fit: BoxFit.cover),
      ),
      //padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
      child: DefaultTextStyle(
        style: GoogleFonts.averiaGruesaLibre(color: Colors.black),
        child: ListView(children: [
//
//-----------------------------------HALAMAN CONGRATULATIONS STARTS HERE--------------------------------------
//
          // const Center(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       SizedBox(
          //         height: 40,
          //       ),
          //       Text(
          //         "Congratulations",
          //         style: TextStyle(fontSize: 30),
          //       ),
          //       SizedBox(
          //         height: 10,
          //       ),
          //       Text("Your commitment to learning is truly admirable, Dear",
          //           style: TextStyle(fontSize: 14)),
          //       SizedBox(
          //         height: 20,
          //       ),
          //     ],
          //   ),
          // ),

          // Container(
          //   height: 250,
          //   child: Image.asset(
          //     "assets/icon_mission_new.png",
          //     fit: BoxFit.fitHeight,
          //   ),
          // ),

          // Container(
          //   padding: EdgeInsets.only(
          //       top: 10.r, left: 10.r, right: 10.r, bottom: 10.r),
          //   child: Stack(
          //     children: [
          //       Card(
          //         elevation: 0,
          //         color: Colors.white,
          //         shape: const RoundedRectangleBorder(
          //             side: BorderSide(color: Colors.black, width: 3),
          //             borderRadius: BorderRadius.all(Radius.circular(25))),
          //         child: SizedBox(
          //           width: 1.sw,
          //           height: 0.35.sh,
          //         ),
          //       ),
          //       Container(
          //           height: 0.36.sh,
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: [
          //               const Text("Your Score is:",
          //                   style: TextStyle(fontSize: 24)),
          //               const Text(
          //                 "8/10",
          //                 style: TextStyle(fontSize: 60),
          //               ),
          //               const SizedBox(
          //                 height: 50,
          //               ),
          //               Card(
          //                 elevation: 0,
          //                 color: const Color(0xffDFDCEF),
          //                 shape: const RoundedRectangleBorder(
          //                     side: BorderSide(color: Colors.black, width: 3),
          //                     borderRadius: BorderRadius.only(
          //                         bottomLeft: Radius.circular(25),
          //                         bottomRight: Radius.circular(25))),
          //                 child: Container(
          //                   padding: const EdgeInsets.all(30),
          //                   width: 1.sw,
          //                   height: 0.12.sh,
          //                   child: ElevatedButton(
          //                     style: ElevatedButton.styleFrom(
          //                         backgroundColor: const Color(0xffFAC6EA),
          //                         side: const BorderSide(
          //                             width: 3.0, color: Colors.black),
          //                         shape: RoundedRectangleBorder(
          //                             borderRadius:
          //                                 BorderRadius.circular(20.0))),
          //                     onPressed: () {},
          //                     child: const Text(
          //                       'Check out the other topics',
          //                       style: TextStyle(
          //                           color: Colors.black,
          //                           fontWeight: FontWeight.bold),
          //                     ),
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ))
          //     ],
          //   ),
          // )

//
//-----------------------------------HALAMAN CONTENT (part radio button) STARTS HERE--------------------------------------
//
          // Center(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         "Health & Pregnancy",
          //         style: TextStyle(fontSize: 30),
          //       ),
          //       Text("Sub-Topic 1", style: TextStyle(fontSize: 14))
          //     ],
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.only(
          //       top: 10.r, left: 10.r, right: 10.r, bottom: 10.r),
          //   child: Stack(
          //     children: [
          //       Card(
          //         elevation: 0,
          //         color: Colors.white,
          //         shape: const RoundedRectangleBorder(
          //             side: BorderSide(color: Colors.black, width: 3),
          //             borderRadius: BorderRadius.all(Radius.circular(25))),
          //         child: SizedBox(
          //           width: 1.sw,
          //           height: 0.4.sh,
          //         ),
          //       ),
          //       SizedBox(
          //         height: 0.4.sh,
          //         width: 1.sw,
          //         child: const Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Text(
          //                 "Pre-marital health screening is\nimportant to limit...",
          //                 style: TextStyle(fontSize: 20)),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   child: Column(
          //     children: [
          //       ListTile(
          //         title: Text("The spread of genetic disease"),
          //         leading: Radio(
          //           value: 1,
          //           groupValue: selectedOption,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedOption = value!;
          //             });
          //           },
          //         ),
          //       ),
          //       ListTile(
          //         title: Text("The couple’s mental readiness"),
          //         leading: Radio(
          //           value: 2,
          //           groupValue: selectedOption,
          //           onChanged: (value) {
          //             setState(() {
          //               selectedOption = value!;
          //             });
          //           },
          //         ),
          //       ),
          //     ],
          //   ),
          // )

//-----------------------------------HALAMAN CONTENT (part bacaan) STARTS HERE--------------------------------------
//
          // Center(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         "Health & Pregnancy",
          //         style: TextStyle(fontSize: 30),
          //       ),
          //       Text("Sub-Topic 1", style: TextStyle(fontSize: 14))
          //     ],
          //   ),
          // ),
          // Container(
          //     padding: EdgeInsets.only(
          //         top: 10.r, left: 10.r, right: 10.r, bottom: 10.r),
          //     child: Stack(
          //       children: [
          //         Card(
          //           elevation: 0,
          //           color: Colors.white,
          //           shape: const RoundedRectangleBorder(
          //               side: BorderSide(color: Colors.black, width: 3),
          //               borderRadius: BorderRadius.all(Radius.circular(25))),
          //           child: SizedBox(
          //             width: 1.sw,
          //             height: 0.72.sh,
          //           ),
          //         ),
          //         Container(
          //             height: 0.72.sh,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               children: [
          //                 Image.asset(
          //                   'assets/pic_mission1.png',
          //                 ),
          //                 SizedBox(
          //                   height: 10,
          //                 ),
          //                 Text("Hey, beautiful!",
          //                     style: TextStyle(fontSize: 25)),
          //                 Text("Have you ever heard about",
          //                     style: TextStyle(fontSize: 20)),
          //                 Text("Pre-marital health screening?",
          //                     style: TextStyle(fontSize: 20)),
          //                 SizedBox(
          //                   height: 100.h,
          //                 ),
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     ElevatedButton(
          //                       style: ElevatedButton.styleFrom(
          //                           backgroundColor: const Color(0xFFB4B0CE),
          //                           shape: RoundedRectangleBorder(
          //                               side: const BorderSide(
          //                                   color: Colors.black, width: 3),
          //                               borderRadius:
          //                                   BorderRadius.circular(10)),
          //                           minimumSize: Size(140, 68)),
          //                       onPressed: () {
          //                         context.pushRoute(const ArticlesRoute());
          //                       },
          //                       child: Text(
          //                         'Back',
          //                         style: GoogleFonts.averiaGruesaLibre(
          //                             color: Colors.black, fontSize: 20),
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: 20,
          //                     ),
          //                     ElevatedButton(
          //                       style: ElevatedButton.styleFrom(
          //                           backgroundColor: const Color(0xFFFAC6EA),
          //                           shape: RoundedRectangleBorder(
          //                               side: const BorderSide(
          //                                   color: Colors.black, width: 3),
          //                               borderRadius:
          //                                   BorderRadius.circular(10)),
          //                           minimumSize: Size(140, 68)),
          //                       onPressed: () {
          //                         context.pushRoute(const ArticlesRoute());
          //                       },
          //                       child: Text(
          //                         'Yes, next!',
          //                         style: GoogleFonts.averiaGruesaLibre(
          //                             color: Colors.black, fontSize: 20),
          //                       ),
          //                     ),
          //                   ],
          //                 )
          //               ],
          //             ))
          //       ],
          //     ))

//
//
// ------------------------------------ HALAMAN DEPAN SUB-TOPIC STARTS HERE -------------------------------------------------------
          //
          //
          // const Center(
          //   child: Text(
          //     "Health & Pregnancy",
          //     style: TextStyle(fontSize: 30),
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.only(
          //       top: 10.r, left: 10.r, right: 10.r, bottom: 10.r),
          //   child: Stack(
          //     alignment: AlignmentDirectional.topCenter,
          //     children: [
          //       Card(
          //         elevation: 0,
          //         color: Colors.white,
          //         shape: const RoundedRectangleBorder(
          //             side: BorderSide(color: Colors.black, width: 3),
          //             borderRadius: BorderRadius.all(Radius.circular(25))),
          //         child: SizedBox(
          //           width: 1.sw,
          //           height: 230,
          //           child: Center(
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: <Widget>[
          //                 Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Image.asset(
          //                       'assets/pic_mission1.png',
          //                     ),
          //                   ],
          //                 ),
          //                 Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Text(
          //                       "Why do we need to\nlearn about this?",
          //                       style: GoogleFonts.averiaGruesaLibre(
          //                           fontSize: 20.sp),
          //                     ),
          //                     SizedBox(
          //                       height: 5.h,
          //                     ),
          //                     Text(
          //                       "Because health can protect us\nfrom illness, and at the same\ntime, we provide the better\nlife quality to the next\ngeneration.",
          //                       style: GoogleFonts.averiaGruesaLibre(
          //                           fontSize: 10.sp),
          //                     ),
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          // Container(
          //   padding: EdgeInsets.only(
          //       top: 10.r, left: 10.r, right: 10.r, bottom: 3.r),
          //   child: Stack(
          //     alignment: AlignmentDirectional.topCenter,
          //     children: [
          //       Card(
          //         elevation: 0,
          //         color: Colors.white,
          //         shape: const RoundedRectangleBorder(
          //             side: BorderSide(color: Colors.black, width: 3),
          //             borderRadius: BorderRadius.all(Radius.circular(25))),
          //         child: SizedBox(
          //           width: 1.sw,
          //           height: 110,
          //           child: const Center(
          //             child: Row(),
          //           ),
          //         ),
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           Container(
          //             width: 0.7.sw,
          //             child: const Text(
          //               "Sub-topic 1\nPre-Marital Health Screening?",
          //               textAlign: TextAlign.center,
          //             ),
          //           ),
          //           InkWell(
          //             // mau dikasih effect splash tapi belum berhasil
          //             onTap: () {},
          //             child: Card(
          //               elevation: 0,
          //               color: const Color(0xffB4B0CE),
          //               shape: const RoundedRectangleBorder(
          //                   side: BorderSide(color: Colors.black, width: 3),
          //                   borderRadius: BorderRadius.only(
          //                       topRight: Radius.circular(25),
          //                       bottomRight: Radius.circular(25))),
          //               child: SizedBox(
          //                 width: 0.2.sw,
          //                 height: 110,
          //                 child: const Center(
          //                   child: Icon(
          //                     Icons.arrow_circle_right_outlined,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // ),

          // Container(
          //   padding: EdgeInsets.only(
          //       top: 3.r, left: 10.r, right: 10.r, bottom: 10.r),
          //   child: Stack(
          //     alignment: AlignmentDirectional.topCenter,
          //     children: [
          //       Card(
          //         elevation: 0,
          //         color: Colors.white,
          //         shape: const RoundedRectangleBorder(
          //             side: BorderSide(color: Colors.black, width: 3),
          //             borderRadius: BorderRadius.all(Radius.circular(25))),
          //         child: SizedBox(
          //           width: 1.sw,
          //           height: 110,
          //           child: const Center(
          //             child: Row(),
          //           ),
          //         ),
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           Container(
          //             width: 0.7.sw,
          //             child: const Text(
          //               "Sub-topic 2\nDo I need to change my\nlifestyle before marriage?s",
          //               textAlign: TextAlign.center,
          //             ),
          //           ),
          //           InkWell(
          //             // mau dikasih effect splash tapi belum berhasil
          //             onTap: () {},
          //             child: Card(
          //               elevation: 0,
          //               color: const Color(0xffB4B0CE),
          //               shape: const RoundedRectangleBorder(
          //                   side: BorderSide(color: Colors.black, width: 3),
          //                   borderRadius: BorderRadius.only(
          //                       topRight: Radius.circular(25),
          //                       bottomRight: Radius.circular(25))),
          //               child: SizedBox(
          //                 width: 0.2.sw,
          //                 height: 110,
          //                 child: const Center(
          //                   child: Icon(
          //                     Icons.arrow_circle_right_outlined,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // ),

          // Container(
          //   padding: const EdgeInsets.only(left: 30, right: 30),
          //   child: const Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text("References:\n"),
          //       Text(
          //           "1. National Health Marriage Resource Center. (2008) | What is the Relationship of Marriage to Physical Health?"),
          //       Text(
          //           "2. B. (n.d.). A premarital screening for a happy marriage | Bangkok Hospital"),
          //       Text("3. Pre Marital Check Up Malaysia - SunMed.")
          //     ],
          //   ),
          // )
//
//
//-----------------------------------HALAMAN MISSION (sebelum diubah) STARTS HERE--------------------------------------
//
//
//           const Center(
//             child: Text(
//               "Let's Start The Mission",
//               style: TextStyle(fontSize: 30),
//             ),
//           ),
//           Center(
//             child: Image.asset(
//               "assets/icon_mission.png",
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   //-----------------------Mission 1
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.transparent,
//                       shadowColor: Colors.transparent,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 0, vertical: 0),
//                     ),
//                     onPressed: () {
//                       context.pushRoute(const MissionTopicOneRoute());
//                     },
//                     child: Card(
//                       elevation: 0,
//                       color: Colors.white,
//                       shape: const RoundedRectangleBorder(
//                           side: BorderSide(color: Colors.black, width: 3),
//                           borderRadius: BorderRadius.all(Radius.circular(20))),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: 150.w,
//                             width: 150.w,
//                             child: Image.asset(
//                               "assets/pic_mission1.png",
//                               height: 150.w,
//                             ),
//                           ),
//                           Container(
//                             alignment: Alignment.center,
//                             height: 40.w,
//                             width: 150.w,
//                             decoration: BoxDecoration(
//                               border: Border.all(width: 3, color: Colors.black),
//                               color: const Color(0xffDFDCEF),
//                               borderRadius: const BorderRadius.only(
//                                 bottomRight: Radius.circular(20),
//                                 bottomLeft: Radius.circular(20),
//                               ),
//                             ),
//                             child: const Text("Health & Pregnancy"),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   //------------Mission 2
//                   GestureDetector(
//                     onTap: () {},
//                     child: Card(
//                       elevation: 0,
//                       color: Colors.white,
//                       shape: const RoundedRectangleBorder(
//                           side: BorderSide(color: Colors.black, width: 3),
//                           borderRadius: BorderRadius.all(Radius.circular(20))),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: 150.w,
//                             width: 150.w,
//                             child: Image.asset(
//                               "assets/pic_mission2.png",
//                               height: 150.w,
//                             ),
//                           ),
//                           Container(
//                             alignment: Alignment.center,
//                             height: 40.w,
//                             width: 150.w,
//                             decoration: BoxDecoration(
//                               border: Border.all(width: 3, color: Colors.black),
//                               color: const Color(0xffDFDCEF),
//                               borderRadius: const BorderRadius.only(
//                                 bottomRight: Radius.circular(20),
//                                 bottomLeft: Radius.circular(20),
//                               ),
//                             ),
//                             child: const Text("Emotional Control"),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   //------------Mission 3
//                   GestureDetector(
//                     onTap: () {},
//                     child: Card(
//                       elevation: 0,
//                       color: Colors.white,
//                       shape: const RoundedRectangleBorder(
//                           side: BorderSide(color: Colors.black, width: 3),
//                           borderRadius: BorderRadius.all(Radius.circular(20))),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: 150.w,
//                             width: 150.w,
//                             child: Image.asset(
//                               "assets/pic_mission3.png",
//                               height: 150.w,
//                             ),
//                           ),
//                           Container(
//                             alignment: Alignment.center,
//                             height: 40.w,
//                             width: 150.w,
//                             decoration: BoxDecoration(
//                               border: Border.all(width: 3, color: Colors.black),
//                               color: const Color(0xffDFDCEF),
//                               borderRadius: const BorderRadius.only(
//                                 bottomRight: Radius.circular(20),
//                                 bottomLeft: Radius.circular(20),
//                               ),
//                             ),
//                             child: const Text("Parenting"),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   //------------Mission 4
//                   GestureDetector(
//                     onTap: () {},
//                     child: Card(
//                       elevation: 0,
//                       color: Colors.white,
//                       shape: const RoundedRectangleBorder(
//                           side: BorderSide(color: Colors.black, width: 3),
//                           borderRadius: BorderRadius.all(Radius.circular(20))),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: 150.w,
//                             width: 150.w,
//                             child: Image.asset(
//                               "assets/pic_mission4.png",
//                               height: 150.w,
//                             ),
//                           ),
//                           Container(
//                             alignment: Alignment.center,
//                             height: 40.w,
//                             width: 150.w,
//                             decoration: BoxDecoration(
//                               border: Border.all(width: 3, color: Colors.black),
//                               color: const Color(0xffDFDCEF),
//                               borderRadius: const BorderRadius.only(
//                                 bottomRight: Radius.circular(20),
//                                 bottomLeft: Radius.circular(20),
//                               ),
//                             ),
//                             child: const Text("Financial Stability"),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//           SizedBox(
//             height: 10.w,
//           ),
//           Container(
//             //height: 0.2.sh,
//             width: 1.sw,
//             //color: Colors.white,
//             padding: const EdgeInsets.only(
//                 top: 10.0, bottom: 30.0, left: 50.0, right: 50.0),
//             child: const Text(
//               """Narrated Abu Huraira: The Prophet (ﷺ) said,
// "A woman is married for four things, i.e., her wealth, her family status, her beauty and her religion. So you should marry the religious woman (otherwise) you will be a losers. [Sahih al-Bukhari 5090]""",
//               textAlign: TextAlign.center,
//             ),
//           )
        ]),
      ),
    );
  }
}
