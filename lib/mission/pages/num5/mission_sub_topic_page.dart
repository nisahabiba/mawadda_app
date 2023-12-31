import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TOPIC MATERIALS NUM.5

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Firebase.initializeApp();
//   runApp(const MissionSubTopicPage());
// }

class MissionSubTopicPage extends StatefulWidget {
  const MissionSubTopicPage({Key? key}) : super(key: key);

  @override
  State<MissionSubTopicPage> createState() => _MissionSubTopicPage();
}

@RoutePage()
class _MissionSubTopicPage extends State<MissionSubTopicPage> {
  final String collectionName = 'missionText';
  final List<String> documentIds = [
    'health_pregnancy',
    'emotional_control',
    'parenting',
    'financial_stability'
  ]; // Add more document IDs as needed
  int currentIndex = 0;
  String currentText = ''; // Replace with your document ID
  String text1 = '';
  String text2 = '';

  @override
  void initState() {
    super.initState();
    print('Initial Index: $currentIndex');
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      // Reference to the document in the "missionText" collection
      DocumentReference documentReference = FirebaseFirestore.instance
          .collection('missionText')
          .doc(documentIds[currentIndex]);

      // Get the document snapshot
      DocumentSnapshot snapshot = await documentReference.get();

      // Check if the document exists
      if (snapshot.exists) {
        // Access the "text1" field from the document data
        String fetchedText1 = snapshot.get('text1');
        String fetchedText2 = snapshot.get('text2');

        String fetchedText = snapshot.get('currentText');
        setState(() {
          text1 = fetchedText1;
          text2 = fetchedText2;

          currentText = fetchedText;
        });
      } else {
        setState(() {
          text1 = 'Document does not exist';
          text2 = 'Document does not exist';
          currentText = 'Document does not exist';
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
      setState(() {
        text1 = 'Error fetching data';
      });
    }
  }

  void nextDocument() {
    setState(() {
      // Increment the index and fetch the next document
      currentIndex = (currentIndex + 1) % documentIds.length;
      print('Updated Index: $currentIndex');
      fetchData();
    });
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
                          //Text(text1, style: TextStyle(fontSize: 25)),
                          Container(
                            width: 0.7.sw,
                            child: Text(currentText,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20)),
                          ),
                          // Text(text2, style: TextStyle(fontSize: 20)),
                          // Text(text3, style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 50.h,
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
                                  nextDocument();
                                  context.pushRoute(
                                      const MissionSubTopicRadioRoute());
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
