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
          const Center(
            child: Text(
              "Health & Pregnancy",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10.r, left: 10.r, right: 10.r, bottom: 10.r),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: SizedBox(
                    width: 1.sw,
                    height: 230,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/pic_mission1.png',
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Why do we need to\nlearn about this?",
                                style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 20.sp),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Because health can protect us\nfrom illness, and at the same\ntime, we provide the better\nlife quality to the next\ngeneration.",
                                style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 10.sp),
                              ),
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

          Container(
            padding: EdgeInsets.only(
                top: 10.r, left: 10.r, right: 10.r, bottom: 3.r),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: SizedBox(
                    width: 1.sw,
                    height: 110,
                    child: const Center(
                      child: Row(),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 0.7.sw,
                      child: const Text(
                        "Sub-topic 1\nPre-Marital Health Screening?",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InkWell(
                      // mau dikasih effect splash tapi belum berhasil
                      onTap: () {},
                      child: Card(
                        elevation: 0,
                        color: const Color(0xffB4B0CE),
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        child: SizedBox(
                          width: 0.2.sw,
                          height: 110,
                          child: const Center(
                            child: Icon(
                              Icons.arrow_circle_right_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(
                top: 3.r, left: 10.r, right: 10.r, bottom: 10.r),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: SizedBox(
                    width: 1.sw,
                    height: 110,
                    child: const Center(
                      child: Row(),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 0.7.sw,
                      child: const Text(
                        "Sub-topic 2\nDo I need to change my\nlifestyle before marriage?s",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InkWell(
                      // mau dikasih effect splash tapi belum berhasil
                      onTap: () {},
                      child: Card(
                        elevation: 0,
                        color: const Color(0xffB4B0CE),
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        child: SizedBox(
                          width: 0.2.sw,
                          height: 110,
                          child: const Center(
                            child: Icon(
                              Icons.arrow_circle_right_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("References:\n"),
                Text(
                    "1. National Health Marriage Resource Center. (2008) | What is the Relationship of Marriage to Physical Health?"),
                Text(
                    "2. B. (n.d.). A premarital screening for a happy marriage | Bangkok Hospital"),
                Text("3. Pre Marital Check Up Malaysia - SunMed.")
              ],
            ),
          )
// ------------------- THE MISSION PAGE START HERE -------------------------------------------------------------------------------------------------------------------------
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
