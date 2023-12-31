import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';

// TOPIC MATERIALS NUM.4

@RoutePage()
class MissionSubTopicRadioPage extends StatefulWidget {
  const MissionSubTopicRadioPage({super.key});

  @override
  State<MissionSubTopicRadioPage> createState() =>
      _MissionSubTopicRadioPageState();
}

class _MissionSubTopicRadioPageState extends State<MissionSubTopicRadioPage> {
  int selectedOption = 0;
  final String collectionName = 'missionText';
  final List<String> documentIds = [
    'health_pregnancy',
    'emotional_control',
    'parenting',
    'financial_stability'
  ]; // Add more document IDs as needed
  late int currentIndex = 0;
  String currentText = ''; // Replace with your document ID
  String text1 = '';
  String text2 = '';

  @override
  void initState() {
    super.initState();
    //print('Initial Index: $currentIndex');
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
                    height: 0.4.sh,
                  ),
                ),
                SizedBox(
                  height: 0.4.sh,
                  width: 1.sw,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Pre-marital health screening is\nimportant to limit...",
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  color: const Color(0xffB4B0CE),
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: ListTile(
                    title: const Text("The spread of genetic disease"),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        nextDocument();
                        setState(() {
                          selectedOption = value!;
                        });
                        context.router.popForced();
                        context.router
                            .popAndPushAll([const MissionSubTopicRoute()]);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Card(
                  elevation: 0,
                  color: const Color(0xffB4B0CE),
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: ListTile(
                    title: const Text("The couple’s mental readiness"),
                    leading: Radio(
                      value: 2,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        nextDocument();
                        setState(() {
                          selectedOption = value!;
                        });
                        context.router.popForced();
                        context.router
                            .popAndPushAll([const MissionSubTopicRoute()]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
