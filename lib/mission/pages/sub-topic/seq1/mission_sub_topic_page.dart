import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';

// TOPIC MATERIALS NUM.1

@RoutePage()
class MissionSubTopicPage1 extends StatefulWidget {
  String? documentId;
  int? sub;
  MissionSubTopicPage1({super.key, this.documentId, this.sub});

  @override
  State<MissionSubTopicPage1> createState() => _MissionSubTopicPage1State();
}

class _MissionSubTopicPage1State extends State<MissionSubTopicPage1> {
  int selectedOption = 0;
  final String collectionName = 'missionText';

  int currentIndex = 0;

  String text1 = '';
  String head_text1 = '';

  @override
  void initState() {
    super.initState();
    //print('Initial Index: $currentIndex');
    fetchData();
    print(widget.documentId);
  }

  Future<void> fetchData() async {
    try {
      // Reference to the document in the "missionText" collection
      DocumentReference documentReference = FirebaseFirestore.instance
          .collection('missionText')
          .doc(widget.documentId);

      // Get the document snapshot
      DocumentSnapshot snapshot = await documentReference.get();

      // Check if the document exists
      if (snapshot.exists) {
        // Access the "text1" field from the document data

        String fetchedText1 =
            snapshot.get(widget.sub == 1 ? 'text1' : 'two_text1');
        String fetchedhead_text1 =
            snapshot.get(widget.sub == 1 ? 'head_text1' : 'two_head_text1');

        setState(() {
          text1 = fetchedText1;
          head_text1 = fetchedhead_text1;
        });
      } else {
        setState(() {
          text1 = 'Document does not exist';
          head_text1 = 'Document does not exist';
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
      setState(() {
        text1 = 'Error fetching data';
        head_text1 = 'Error fetching data';
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
                SizedBox(
                  height: 30,
                )
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
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: 0.7.sw,
                              child: Text(
                                head_text1,
                                style: const TextStyle(fontSize: 22),
                                textAlign: TextAlign.left,
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                              width: 0.7.sw,
                              child: Text(
                                text1,
                                style: const TextStyle(fontSize: 16),
                                textAlign: TextAlign.left,
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
                                  context.pushRoute(MissionSubTopicRadioRoute2(
                                      widget.documentId!, widget.sub!));
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
