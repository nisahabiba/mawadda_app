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
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Container(
                  width: 1.sw,
                  height: 150.h,
                )),
          ),
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
                        const Icon(
                          Icons.check_circle,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text("text"),
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
