import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/di/injector.dart';
import 'package:mawadda_app/core/router/router.dart';
import 'package:mawadda_app/home/pages/home_view.dart';
import 'package:mawadda_app/mission/pages/mission_navigation_page.dart';
import 'package:mawadda_app/mission/pages/mission_page.dart';

@RoutePage()
class MissionCompletedPage extends StatelessWidget {
  const MissionCompletedPage({super.key});

  Widget get page {
    return Container(
      // Your widget code here...
      child: const Text('This is the mission completed page!'),
    );
  }

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Congratulations",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: Image.asset(
              "assets/icon_mission_new.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          const SizedBox(
            height: 40,
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
                    height: 0.35.sh,
                  ),
                ),
                Container(
                    height: 0.36.sh,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Thank you so much!",
                            style: TextStyle(fontSize: 24)),
                        SizedBox(
                            width: 0.7.sw,
                            child: const Text(
                                "Your commitment to learn something new is truly admirable, Dear",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                ))),
                        const SizedBox(
                          height: 50,
                        ),
                        Card(
                          elevation: 0,
                          color: const Color(0xffDFDCEF),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25))),
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            width: 1.sw,
                            height: 0.12.sh,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffFAC6EA),
                                  side: const BorderSide(
                                      width: 3.0, color: Colors.black),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0))),
                              onPressed: () {
                                context.popRoute();
                              },
                              child: const Text(
                                'Check out the other topics',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
