import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';

// TOPIC MATERIALS NUM.5

@RoutePage()
class MissionSubTopicRadioPage5 extends StatefulWidget {
  const MissionSubTopicRadioPage5({super.key});

  @override
  State<MissionSubTopicRadioPage5> createState() =>
      _MissionSubTopicRadioPage5State();
}

class _MissionSubTopicRadioPage5State extends State<MissionSubTopicRadioPage5> {
  int selectedOption = 0;
  final String collectionName = 'missionText';
  final String documentId = 'health_pregnancy';
  int currentIndex = 0;
  String quiz = '';
  String answer1 = '';
  String answer2 = '';

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
        // Access the "text1" field from the document data
        String fetchedText = snapshot.get('quiz');
        String fetchedText1 = snapshot.get('answer1');
        String fetchedText2 = snapshot.get('answer2');

        setState(() {
          quiz = fetchedText;
          answer1 = fetchedText1;
          answer2 = fetchedText2;
        });
      } else {
        setState(() {
          quiz = 'Document does not exist';
          answer1 = 'Document does not exist';
          answer2 = 'Document does not exist';
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
      setState(() {
        quiz = 'Error fetching data';
        answer1 = 'Error fetching data';
        answer2 = 'Error fetching data';
      });
    }
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 0.7.sw,
                          child: Text(
                            quiz,
                            style: TextStyle(fontSize: 20),
                          )),
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
                    title: SizedBox(
                      width: 0.7.sw,
                      child: Text(answer1),
                    ),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        //nextDocument();
                        setState(() {
                          selectedOption = value!;
                        });
                        context.router.popForced();
                        context.router
                            .popAndPushAll([const MissionSubTopicRoute5()]);
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
                    title: SizedBox(
                      width: 0.7.sw,
                      child: Text(answer2),
                    ),
                    leading: Radio(
                      value: 2,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        //nextDocument();
                        setState(() {
                          selectedOption = value!;
                        });
                        context.router.popForced();
                        context.router
                            .popAndPushAll([const MissionSubTopicRoute5()]);
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

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
}
