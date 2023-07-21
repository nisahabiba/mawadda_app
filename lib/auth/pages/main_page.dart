// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mawadda_app/auth/components/auth_form_component.dart';
import 'package:mawadda_app/auth/pages/register_page.dart';
import 'package:mawadda_app/auth/pages/succeed_signup.dart';

class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Mawadda';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Color(0xFFA04452),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
        ),
        body: Container(),

        // PLEASE CONTINUE HERE
        //>>>>>>>>>>>>>>>>>>>>>>>>>
      ),
    );
  }
}

// class _MyMainPage extends StatefulWidget {
//   const _MyMainPage({super.key, required String title});

//   @override
//   State<_MyMainPage> createState() => __MyMainPageState();
// }

// class __MyMainPageState extends State<_MyMainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
