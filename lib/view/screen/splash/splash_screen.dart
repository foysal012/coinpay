import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import '../introduction/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    checkRoute();
  }

  Future<void> checkRoute() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => IntroductionScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/image/splash.jpg'), fit: BoxFit.fill)
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            SpinKitFadingCircle(
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: index.isEven ? Colors.red : Colors.green,
                  ),
                );
              },
            ),
            Gap(80),
          ],
        ),
      ),
    );
  }
}
