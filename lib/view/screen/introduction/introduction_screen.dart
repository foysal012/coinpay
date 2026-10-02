import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {

  final controller = PageController();

  int currentIndex = 0;

  void setCurrentIndex(int value){
    currentIndex = value;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.teal,
              )
            ],
          ),

          Container(
            alignment: AlignmentDirectional(0, 0.8),
            child: MaterialButton(
              onPressed: () {
                controller.jumpToPage(currentIndex+1);
              },
              color: Colors.blue,
              child: Text('Next'),
            ),
          ),

          Container(
            alignment: AlignmentDirectional(0, 0.5),
            child: SmoothPageIndicator(
                controller: controller,
                count:  3,
                effect:  WormEffect(),
                onDotClicked: (index){
                  controller.jumpToPage(index);
                  setCurrentIndex(index);
                }
            ),
          )
        ],
      ),
    );
  }
}
