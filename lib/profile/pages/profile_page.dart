// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/profile/pages/edit_profile_page.dart';

import '../../auth/pages/auth_page.dart';
import '../../core/router/router.dart';
import '../bloc/navigation/profile_navigation_cubit.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _checkBoxValue1 = false;
  bool _checkBoxValue2 = false;
  bool _checkBoxValue3 = false;
  bool _checkBoxValue4 = false;
  bool _checkBoxValue5 = false;
  bool _checkBoxValue6 = false;
  bool _checkBoxValue7 = false;
  bool _checkBoxValue8 = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late User _user;
  late DocumentSnapshot _userSnapshot;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    _user = _auth.currentUser!;
    _userSnapshot = await _firestore.collection('users').doc(_user.uid).get();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileNavigationCubit, ProfileNavigationState>(
        builder: (context, state) {
      if (state == const EditProfileSt()) {
        return const EditProfilePage();
      } else {
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
                height: 170.h,
                width: 329.w,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text("(name)"),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text("email_here@gmail.com"),

                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //       backgroundColor: const Color(0xFFB4B0CE),
                    //       shape: RoundedRectangleBorder(
                    //           side: const BorderSide(
                    //               color: Colors.black, width: 3),
                    //           borderRadius: BorderRadius.circular(10))),
                    //   onPressed: () {
                    //     context.read<ProfileNavigationCubit>().changePage(
                    //           CurrentProfilePage.editProfilePage,
                    //         );
                    //   },
                    //   child: Text(
                    //     'Edit Profile',
                    //     style: GoogleFonts.averiaGruesaLibre(
                    //         color: Colors.black, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Divider(
                height: 0,
                color: Colors.black,
              ),
              SizedBox(
                height: 20.w,
              ),
              Container(
                child: const Text("Your Progress",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24)),
              ),
              SizedBox(
                height: 20.w,
              ),

//---------------------------> Topic 1

              Column(children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Card(
                        elevation: 0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: 0.9.sw,
                          height: 50,
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Topic 1: Health & Pregnancy",
                                style: GoogleFonts.averiaGruesaLibre(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                LabeledCheckbox(
                    label: 'Sub-topic 1 : Pre-marital health screening?',
                    padding: EdgeInsets.only(left: 40, right: 20),
                    value: _checkBoxValue1,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue1 = newValue;
                      });
                    }),
                LabeledCheckbox(
                    label: 'Sub-topic 2 : About fertility & pregnancy',
                    padding: EdgeInsets.only(left: 40, right: 20),
                    value: _checkBoxValue2,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue2 = newValue;
                      });
                    }),
              ]),

//---------------------------> Topic 2

              Column(children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Card(
                        elevation: 0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: 0.9.sw,
                          height: 50,
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Topic 2: Emotional Control",
                                style: GoogleFonts.averiaGruesaLibre(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                LabeledCheckbox(
                    label: 'Sub-topic 1 : Understanding yourself',
                    padding: EdgeInsets.only(left: 40, right: 20),
                    value: _checkBoxValue3,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue3 = newValue;
                      });
                    }),
                LabeledCheckbox(
                    label: 'Sub-topic 2 : Communication is the key!',
                    padding: EdgeInsets.only(left: 40, right: 20),
                    value: _checkBoxValue4,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue4 = newValue;
                      });
                    }),
              ]),

//---------------------------> Topic 3

              Column(children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Card(
                        elevation: 0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: 0.9.sw,
                          height: 50,
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Topic 3: Parenting",
                                style: GoogleFonts.averiaGruesaLibre(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                LabeledCheckbox(
                    label: 'Sub-topic 1 : Am I ready to have kids?',
                    padding: EdgeInsets.only(left: 40, right: 20),
                    value: _checkBoxValue5,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue5 = newValue;
                      });
                    }),
                LabeledCheckbox(
                    label: 'Sub-topic 2 : Learn about the motherhood',
                    padding: EdgeInsets.only(left: 40, right: 20),
                    value: _checkBoxValue6,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue6 = newValue;
                      });
                    }),
              ]),

//---------------------------> Topic 4

              Column(children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Card(
                        elevation: 0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: 0.9.sw,
                          height: 50,
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Topic 4: Financial Stability",
                                style: GoogleFonts.averiaGruesaLibre(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                LabeledCheckbox(
                    label: 'Sub-topic 1 : You and Your Money Value',
                    padding: EdgeInsets.only(left: 40, right: 20),
                    value: _checkBoxValue7,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue7 = newValue;
                      });
                    }),
                LabeledCheckbox(
                    label: 'Sub-topic 2 : Financial Management',
                    padding: EdgeInsets.only(left: 40, right: 20),
                    value: _checkBoxValue8,
                    onChanged: (bool newValue) {
                      setState(() {
                        _checkBoxValue8 = newValue;
                      });
                    }),
                SizedBox(
                  height: 20.w,
                )
              ]),
            ]),
          ),
        );
      }
    });
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
