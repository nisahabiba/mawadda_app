import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawadda_app/core/router/router.dart';

@RoutePage()
class MissionPage extends StatefulWidget {
  const MissionPage({super.key});

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/image_back.png"), fit: BoxFit.cover),
      ),
      //padding: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
      child: DefaultTextStyle(
        style: GoogleFonts.averiaGruesaLibre(color: Colors.black),
        child: ListView(children: [
          SizedBox(
            height: 10.h,
          ),
          const Center(
            child: Text(
              "Let's Start The Mission",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/icon_mission.png",
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
//------------------------ Mission 1
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(
                        MissionTopicRoute(
                          imageTopic: 'assets/pic_mission1.png',
                          title: 'Health & Pregnancy',
                          subTitle: 'Why do we need to learn about this?',
                          subTitleDetails:
                              "Because health can protect us from illness, and at the same time, we provide the better life quality to the next generation.",
                          subTopic1: 'Pre-Marital Health Screening?',
                          subTopic2: 'Fertility & pregnancy',
                          ref1:
                              'National Health Marriage Resource Center. (2008) | What is the Relationship of Marriage to Physical Health?',
                          ref2:
                              'B. (n.d.). A premarital screening for a happy marriage | Bangkok Hospital.',
                          ref3: 'Pre Marital Check Up Malaysia - SunMed.',
                        ),
                      );
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: Image.asset(
                              "assets/pic_mission1.png",
                              height: 150.w,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40.w,
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: const Color(0xffDFDCEF),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Text("Health & Pregnancy"),
                          )
                        ],
                      ),
                    ),
                  ),
//------------------------ Mission 2
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(
                        MissionTopicRoute(
                          imageTopic: 'assets/pic_mission2.png',
                          title: 'Emotional Control',
                          subTitle: 'Why do we need to learn about this?',
                          subTitleDetails:
                              'Because it\'s like building a love bridge, keeping talks drama-free, fights under control, and hearts closer. Smooth sailing for your happily ever after!',
                          subTopic1: 'Understanding your emotions',
                          subTopic2: 'Healthy communication',
                          ref1:
                              'Perloff, R.M. (1993) | The Dynamics of Persuasion: Communication and Attitudes in the 21st Century.',
                          ref2:
                              'Berlacher, et.al. (2017) | The Impact of Communication Skills Training on Cardiology Fellows\' and Attending Physicians\' Perceived Comfort with Difficult Conversations. Journal of Palliative Medicine, 20, 767-769.',
                          ref3:
                              'Goleman, D.J. (1995) | Emotional Intelligence: Why It Can Matter More Than IQ.',
                        ),
                      );
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: Image.asset(
                              "assets/pic_mission2.png",
                              height: 150.w,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40.w,
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: const Color(0xffDFDCEF),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Text("Emotional Control"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
//------------------------ Mission 3
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(
                        MissionTopicRoute(
                          imageTopic: 'assets/pic_mission3.png',
                          title: 'Parenting',
                          subTitle: 'Why do we need to learn about this?',
                          subTitleDetails:
                              'Because pre-marital parenting discussions build a stronger foundation for your family, ensuring the best way to raise your kids.',
                          subTopic1: 'Am I ready to have kids?',
                          subTopic2: 'Motherhood',
                          ref1:
                              'Perry, T. (2020) | Love, Money, and Parenting. Journal of Economic Issues, 54, 554 - 556.',
                          ref2:
                              'Khair, A.U. (2014) | The Correlation of Parenting and Socioeconomic Status Towards English Learning Readiness of Children.',
                          ref3:
                              'Kanishevska, L. (2020) | State of readiness for responsible parenting among high school students in boarding schools. Theoretical and Methodical Problems of Children and Youth Education.',
                        ),
                      );
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: Image.asset(
                              "assets/pic_mission3.png",
                              height: 150.w,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40.w,
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: const Color(0xffDFDCEF),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Text("Parenting"),
                          )
                        ],
                      ),
                    ),
                  ),
//------------------------ Mission 4
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(
                        MissionTopicRoute(
                          imageTopic: 'assets/pic_mission4.png',
                          title: 'Financial Stability',
                          subTitle: 'Why do we need to learn about this?',
                          subTitleDetails:
                              'Because understanding each other\'s finances before marriage builds trust, avoids future stress, and paves the way for a shared financial future.',
                          subTopic1: 'Money in Marriage',
                          subTopic2: 'Prenuptial Agreement',
                          ref1:
                              'Rashid, N., et.al. (2018) | Ethics and Financial Reporting Assurance. International Journal of Academic Research in Business and Social Sciences.',
                          ref2:
                              'John, L. K., et.al. (2016) | Hiding personal information reveals the worst. Proceedings of the National Academy of Sciences of the United States of America, 113(4), 954–959.',
                          ref3:
                              'Hatcher, C.B. (2000) | Should Households Establish Emergency Funds.',
                        ),
                      );
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.w,
                            width: 150.w,
                            child: Image.asset(
                              "assets/pic_mission4.png",
                              height: 150.w,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40.w,
                            width: 150.w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.black),
                              color: const Color(0xffDFDCEF),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Text("Financial Stability"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          Container(
            //height: 0.2.sh,
            width: 1.sw,
            //color: Colors.white,
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 30.0, left: 50.0, right: 50.0),
            child: const Text(
              """Narrated Abu Huraira: The Prophet (ﷺ) said,
"A woman is married for four things, i.e., her wealth, her family status, her beauty and her religion. So you should marry the religious woman (otherwise) you will be a losers. [Sahih al-Bukhari 5090]""",
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
