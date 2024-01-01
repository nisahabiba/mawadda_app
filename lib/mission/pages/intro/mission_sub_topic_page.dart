import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';

// TOPIC MATERIALS INTRO

@RoutePage()
class MissionSubTopicPage extends StatefulWidget {
  const MissionSubTopicPage({super.key});

  @override
  State<MissionSubTopicPage> createState() => _MissionSubTopicPageState();
}

class _MissionSubTopicPageState extends State<MissionSubTopicPage> {
  int selectedOption = 0;
  final String collectionName = 'missionText';
  final String documentId = 'health_pregnancy';
  int currentIndex = 0;

  String text_a = '';
  String text_b = '';

  @override
  void initState() {
    super.initState();
    //print('Initial Index: $currentIndex');
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      // Reference to the document in the "missionText" collection
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('missionText').doc(documentId);

      // Get the document snapshot
      DocumentSnapshot snapshot = await documentReference.get();

      // Check if the document exists
      if (snapshot.exists) {
        // Access the "text_aa" field from the document data

        String fetchedtext_a = snapshot.get('text_a');
        String fetchedtext_b = snapshot.get('text_b');

        setState(() {
          text_a = fetchedtext_a;
          text_b = fetchedtext_b;
        });
      } else {
        setState(() {
          text_a = 'Document does not exist';
          text_b = 'Document does not exist';
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
      setState(() {
        text_a = 'Error fetching data';
        text_b = 'Error fetching data';
      });
    }
  }

  // void nextDocument() {
  //   setState(() {
  //     Increment the index and fetch the next document
  //     currentIndex = (currentIndex + 1) % documentIds.length;
  //     print('Updated Index: $currentIndex');
  //     fetchData();
  //   });
  // }

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
                          Text(text_a, style: TextStyle(fontSize: 25)),
                          SizedBox(
                              width: 0.7.sw,
                              child: Text(
                                text_b,
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              )),
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
                                  context.popRoute();
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
                                  context.pushRoute(
                                      const MissionSubTopicRadioRoute1());
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
