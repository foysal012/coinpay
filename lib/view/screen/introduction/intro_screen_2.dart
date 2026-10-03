import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../resources/constant/app_style.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/asset/second.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
            AppStyle.gap20,

            Text('Spend money abroad, and track your expense',
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
