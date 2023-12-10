import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class MissionSubTopicPage extends StatelessWidget {
  const MissionSubTopicPage({super.key});

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
          const Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Health & Pregnancy",
                  style: TextStyle(fontSize: 30),
                ),
                Text("Sub-Topic 1", style: TextStyle(fontSize: 14))
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                  top: 10.r, left: 10.r, right: 10.r, bottom: 10.r),
              child: Stack(
                children: [
                  Card(
                    elevation: 0,
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: SizedBox(
                      width: 1.sw,
                      height: 0.72.sh,
                    ),
                  ),
                  Container(
                      height: 0.72.sh,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/pic_mission1.png',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Hey, beautiful!",
                              style: TextStyle(fontSize: 25)),
                          const Text("Have you ever heard about",
                              style: TextStyle(fontSize: 20)),
                          const Text("Pre-marital health screening?",
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 100.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFB4B0CE),
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.black, width: 3),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    minimumSize: const Size(140, 68)),
                                onPressed: () {
                                  context.pushRoute(const ArticlesRoute());
                                },
                                child: Text(
                                  'Back',
                                  style: GoogleFonts.averiaGruesaLibre(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFAC6EA),
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.black, width: 3),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    minimumSize: const Size(140, 68)),
                                onPressed: () {
                                  context.pushRoute(const ArticlesRoute());
                                },
                                child: Text(
                                  'Yes, next!',
                                  style: GoogleFonts.averiaGruesaLibre(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              ))
        ]),
      ),
    );
  }
}
