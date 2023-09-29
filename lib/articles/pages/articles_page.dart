import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

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
                Image.asset("assets/icon_articles.png"),
                SizedBox(
                  width: 10.w,
                ),
                Text("What do you wanna\nread today, Beautiful?",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 24)),
              ],
            ),
          ),
          Container(
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
                        "assets/back_article_header.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 130.h,
                            ),
                            Text(
                              "Beyond The Words “I do”",
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: 24,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFB4B0CE),
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.black, width: 3),
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text(
                                'by Shahina Siddiqui',
                                style: GoogleFonts.averiaGruesaLibre(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        )),
                  ],
                )),
          ),
          Container(
            width: 1.sw,
            padding: EdgeInsets.only(left: 20.r),
            child: const Text("More Articles",
                textAlign: TextAlign.left, style: TextStyle(fontSize: 24)),
          ),

//--------------------> Article 1

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
                        Image.asset(
                          "assets/pic_article1.png",
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fundamentals of\na Happy Marriage",
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFB4B0CE),
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.black, width: 3),
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text(
                                'by Shahina Siddiqui',
                                style: GoogleFonts.averiaGruesaLibre(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

//--------------------> Article 2

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
                        Image.asset(
                          "assets/pic_article2.png",
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Confessions of a\nShaikh’s Wife Part 1:\nWhat Makes the Man",
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFB4B0CE),
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.black, width: 3),
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text(
                                'by Umm Fudayl',
                                style: GoogleFonts.averiaGruesaLibre(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

//--------------------> Article 3

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
                        Image.asset(
                          "assets/pic_article3.png",
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pre–nups Protect\nMuslim Women",
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFB4B0CE),
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.black, width: 3),
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text(
                                'by Aisyah Sulaiman',
                                style: GoogleFonts.averiaGruesaLibre(
                                    color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        )
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
}
