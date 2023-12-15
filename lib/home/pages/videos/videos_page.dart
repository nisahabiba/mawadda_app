import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';

@RoutePage()
class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

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
            width: 1.sw,
            height: 0.15.sh,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icon_videos.png"),
                SizedBox(
                  width: 1.w,
                ),
                Text("What do you wanna\nwatch today, Beautiful?",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 24)),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              context.pushRoute(
                WebViewRoute(
                  url: 'https://youtu.be/IHFsIXHWnYo?si=g70QUkJpfTa40oz6',
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
              width: 1.sw,
              child: Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 1.sw,
                        height: 210.h,
                        child: Image.asset(
                          "assets/pic_video_header.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 160.h,
                              ),
                              Card(
                                elevation: 0,
                                color: Color(0xFFB4B0CE),
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.black, width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 30.h,
                                  child: Text(
                                    'by Mufti Menk',
                                    style: GoogleFonts.averiaGruesaLibre(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ),

          Container(
            width: 1.sw,
            padding: EdgeInsets.only(left: 20.r),
            child: const Text("More Articles",
                textAlign: TextAlign.left, style: TextStyle(fontSize: 24)),
          ),

//--------------------> Article 1

          GestureDetector(
            onTap: () {
              context.pushRoute(
                WebViewRoute(
                  url: 'https://youtu.be/4NRxMvltGa4?si=sBQrVa3ajQsXBLLj',
                ),
              );
            },
            child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Image.asset(
                            "assets/pic_video1.png",
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Golden Rule\nbefore Marriage",
                                style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              Card(
                                elevation: 0,
                                color: Color(0xFFB4B0CE),
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.black, width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  height: 30.h,
                                  width: 120.h,
                                  child: Text(
                                    'by Mufti Menk',
                                    style: GoogleFonts.averiaGruesaLibre(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

//--------------------> Article 2

          GestureDetector(
            onTap: () {
              context.pushRoute(
                WebViewRoute(
                  url: 'https://www.youtube.com/watch?v=tiP9fDBGf20',
                ),
              );
            },
            child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Image.asset(
                            "assets/pic_video2.png",
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "What if I marry the\n wrong person? - \n Muslim Marriage Advice",
                                style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              Card(
                                elevation: 0,
                                color: Color(0xFFB4B0CE),
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.black, width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  height: 30.h,
                                  width: 120.h,
                                  child: Text(
                                    'by Farhat Amin',
                                    style: GoogleFonts.averiaGruesaLibre(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

//--------------------> Article 3

          GestureDetector(
            onTap: () {
              context.pushRoute(
                WebViewRoute(
                  url: 'https://www.youtube.com/watch?v=SgsSAwrwlCE',
                ),
              );
            },
            child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Image.asset(
                            "assets/pic_video3.png",
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Importance of Compatibility\nIn Islamic Marriage",
                                style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              Card(
                                elevation: 0,
                                color: Color(0xFFB4B0CE),
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.black, width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  height: 30.h,
                                  width: 120.h,
                                  child: Text(
                                    'by Yasmin Mogahid',
                                    style: GoogleFonts.averiaGruesaLibre(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
