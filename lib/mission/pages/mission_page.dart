import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              "Let's Start The Mission",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/icon_mission.png",
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //------------Mission 1
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(const MissionTopicOneRoute());
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: Image.asset(
                              "assets/pic_mission1.png",
                              height: 150.w,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40.w,
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: const Color(0xffDFDCEF),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Text("Health & Pregnancy"),
                          )
                        ],
                      ),
                    ),
                  ),
                  //------------Mission 2
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: Image.asset(
                              "assets/pic_mission2.png",
                              height: 150.w,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40.w,
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: const Color(0xffDFDCEF),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Text("Emotional Control"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //------------Mission 3
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: Image.asset(
                              "assets/pic_mission3.png",
                              height: 150.w,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40.w,
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: const Color(0xffDFDCEF),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Text("Parenting"),
                          )
                        ],
                      ),
                    ),
                  ),
                  //------------Mission 4
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: Image.asset(
                              "assets/pic_mission4.png",
                              height: 150.w,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40.w,
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: const Color(0xffDFDCEF),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Text("Financial Stability"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          Container(
            //height: 0.2.sh,
            width: 1.sw,
            //color: Colors.white,
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 30.0, left: 50.0, right: 50.0),
            child: const Text(
              """Narrated Abu Huraira: The Prophet (ﷺ) said, 
"A woman is married for four things, i.e., her wealth, her family status, her beauty and her religion. So you should marry the religious woman (otherwise) you will be a losers. [Sahih al-Bukhari 5090]""",
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
