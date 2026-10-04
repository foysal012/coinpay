import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../resources/constant/app_style.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/asset/first.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
            AppStyle.gap20,

            Text('Trusted by millions of people, part of one part',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                )
            )
          ],
        ),
      ),
    );
  }
}
