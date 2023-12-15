import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';

@RoutePage()
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
                const Text(
                  "What do you wanna\nread today, Beautiful?",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
            width: 1.sw,
            child: GestureDetector(
                onTap: () {
                  context.pushRoute(
                    WebViewRoute(
                      url:
                          'https://peguamsyariefas.com.my/marriage-in-islam-beyond-the-words-i-do',
                    ),
                  );
                },
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
                            Card(
                              elevation: 0,
                              color: Color(0xFFB4B0CE),
                              shape: const RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.black, width: 3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 30.h,
                                child: Text(
                                  'by Peguam Syarie Faiz Adnaan Associates',
                                  style: GoogleFonts.averiaGruesaLibre(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 10.h,
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
                    url:
                        'https://www.soundvision.com/article/fundamentals-of-a-happy-marriage'),
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
                                    'by Shahina Siddiqui',
                                    style: GoogleFonts.averiaGruesaLibre(
                                        color: Colors.black, fontSize: 12),
                                  ),
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
          ),

//--------------------> Article 2

          GestureDetector(
            onTap: () {
              context.pushRoute(
                WebViewRoute(
                    url:
                        'https://www.almadina.org/studio/articles/confessions-of-a-shaikhs-wife-part-1-what-makes-the-man'),
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
                                "Confessions of a\nShaikh’s Wife:\nWhat Makes the Man",
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
                                    'by Umm Fudayl',
                                    style: GoogleFonts.averiaGruesaLibre(
                                        color: Colors.black, fontSize: 12),
                                  ),
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
          ),

//--------------------> Article 3

          GestureDetector(
            onTap: () {
              context.pushRoute(
                WebViewRoute(
                    url:
                        'https://www.malaysianbar.org.my/article/news/legal-and-general-news/legal-news/pre-nups-protect-muslim-women'),
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
                                    'by Aisyah Sulaiman',
                                    style: GoogleFonts.averiaGruesaLibre(
                                        color: Colors.black, fontSize: 12),
                                  ),
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
          )
        ]),
      ),
    );
  }
}
