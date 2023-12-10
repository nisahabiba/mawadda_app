import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawadda_app/core/router/router.dart';

@RoutePage()
class MissionSubTopicRadioPage extends StatefulWidget {
  const MissionSubTopicRadioPage({super.key});

  @override
  State<MissionSubTopicRadioPage> createState() =>
      _MissionSubTopicRadioPageState();
}

class _MissionSubTopicRadioPageState extends State<MissionSubTopicRadioPage> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          padding:
              EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r, bottom: 10.r),
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
        Column(
          children: [
            ListTile(
              title: const Text("The spread of genetic disease"),
              leading: Radio(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                  // context.router.replace(const MissionSubTopicRoute());
                  // context.router.popUntil((route) {
                  //   return route.settings.name == MissionTopicRoute.name;
                  // });
                  context.router.popForced();

                  context.router.popAndPushAll([
                    const MissionSubTopicRoute(),
                    // const MissionSubTopicRadioRoute()
                  ]);
                },
              ),
            ),
            ListTile(
              title: const Text("The couple’s mental readiness"),
              leading: Radio(
                value: 2,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                  // context.router.replace(const MissionSubTopicRoute());
                  // context.router.popUntil((route) {
                  //   return route.settings.name == MissionTopicRoute.name;
                  // });
                  context.router.popForced();

                  context.router.popAndPushAll([
                    const MissionSubTopicRoute(),
                    // const MissionSubTopicRadioRoute()
                  ]);
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
