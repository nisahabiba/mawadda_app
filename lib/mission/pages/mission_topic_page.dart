// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/document_id_provider.dart';

import 'package:mawadda_app/core/router/router.dart';

@RoutePage()
class MissionTopicPage extends StatelessWidget {
  const MissionTopicPage({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.subTitleDetails,
    required this.subTopic1,
    required this.subTopic2,
    required this.ref1,
    required this.ref2,
    required this.ref3,
    required this.imageTopic,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String subTitleDetails;
  final String subTopic1;
  final String subTopic2;
  final String ref1;
  final String ref2;
  final String ref3;
  final String imageTopic;

  @override
  Widget build(BuildContext context) {
    var documentIdProvider = Provider.of<DocumentIdProvider>(context);

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
          SizedBox(
            height: 10.h,
          ),
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  context.popRoute();
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.keyboard_backspace)),
              ),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.sp,
                  ),
                ),
              ),
            ],
          ),
          // Center(
          //   child: Text(
          //     title,
          //     style: const TextStyle(fontSize: 30),
          //   ),
          // ),
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
                                imageTopic,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200.w,
                                child: Text(
                                  subTitle,
                                  style: GoogleFonts.averiaGruesaLibre(
                                      fontSize: 20.sp),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              SizedBox(
                                width: 200.w,
                                child: Text(
                                  subTitleDetails,
                                  style: GoogleFonts.averiaGruesaLibre(
                                      fontSize: 12.sp),
                                ),
                              )
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
          GestureDetector(
            onTap: () async {
              context.pushRoute(MissionSubTopicRoute(
                  documentIdProvider.documentId.documentId));
            },
            child: Container(
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
                      SizedBox(
                        width: 0.7.sw,
                        child: Text(
                          "Sub-topic 1\n$subTopic1",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      Card(
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
                    ],
                  )
                ],
              ),
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
                    SizedBox(
                      width: 0.7.sw,
                      child: Text("Sub-topic 2\n$subTopic2",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16)),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("References:\n", style: TextStyle(fontSize: 11)),
                Text("1. $ref1", style: const TextStyle(fontSize: 11)),
                Text("2. $ref2", style: const TextStyle(fontSize: 11)),
                Text("3. $ref3", style: const TextStyle(fontSize: 11))
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          )
        ]),
      ),
    );
  }
}
