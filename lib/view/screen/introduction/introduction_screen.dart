import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../resources/constant/app_style.dart';
import '../bottom_navbar/bottom_nav_bar_screen.dart';
import 'intro_screen_1.dart';
import 'intro_screen_2.dart';
import 'intro_screen_3.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {

  final controller = PageController();

  int currentIndex = 0;
  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (value) {
              lastPage = (value ==2);
              currentIndex = value;
              setState(() {

              });
            },
            children: [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
            ],
          ),

          Align(
            alignment: AlignmentDirectional(0.85, -0.75),
            child: GestureDetector(
                onTap: () {
                  controller.jumpToPage(2);
                },
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))
                    ),
                    child: Text('Skip',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0
                        )
                    )
                )
            ),
          ),

          Align(
            alignment: AlignmentDirectional(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextButton(
                    onPressed: () {
                      if (currentIndex != 0) {
                        if (currentIndex != 0) {
                          controller.jumpToPage(currentIndex - 1);
                        }
                      }
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            color: currentIndex!=0? Colors.white:Colors.white38,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            )
                        ),
                        child: Text('Prev',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0
                            )
                        )
                    )
                ),

                SmoothPageIndicator(
                    controller: controller,
                    count:  3,
                    effect:  WormEffect(),
                    onDotClicked: (index){
                      controller.jumpToPage(index);
                    }
                ),
                AppStyle.gap20,

                lastPage?
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavBarScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)
                            )
                        ),
                        child: Text('Done',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0
                            )
                        )
                    )
                ):GestureDetector(
                    onTap: () {
                      controller.jumpToPage(currentIndex+1);
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0)
                            )
                        ),
                        child: Text('Next',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0
                            )
                        )
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
