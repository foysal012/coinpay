import 'package:flutter/material.dart';
import '../../../resources/constant/app_image.dart';
import '../../../resources/constant/app_style.dart';

class AccountSignupSigninScreen extends StatefulWidget {
  const AccountSignupSigninScreen({super.key});

  @override
  State<AccountSignupSigninScreen> createState() => _AccountSignupSigninScreenState();
}

class _AccountSignupSigninScreenState extends State<AccountSignupSigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => debugPrint('ok'), icon: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(AppImage.signUpSigning, fit: BoxFit.fill),
            AppStyle.gap20,

            Text('Create Your\nCoinpay account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0
                )
            ),
            AppStyle.gap10,

            Text('Coinpay is a powerful tool that allows you to easily send, receive and track all yout transections.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0
                )
            ),
            AppStyle.gap40,
            
            MaterialButton(
              onPressed: () {
                
              },
              padding: EdgeInsets.symmetric(vertical: 8.0),
              height: 44.0,
              minWidth: MediaQuery.sizeOf(context).width,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0))
              ),
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Sign up'),
            ),
            AppStyle.gap10,

            MaterialButton(
              onPressed: () {

              },
              padding: EdgeInsets.symmetric(vertical: 8.0),
              height: 44.0,
              minWidth: MediaQuery.sizeOf(context).width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0)),
                  side: BorderSide(color: Colors.blue, width: 2.0)
              ),
              textColor: Colors.blue,
              // color: Colors.blueAccent,
              child: Text('Log in'),
            ),
            AppStyle.gap40,

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'By continuing you accept our\n',
                style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500),
                children: const <TextSpan>[
                  TextSpan(text: 'Terms of Service', style: TextStyle(fontSize: 12, color: Colors.blue, fontWeight: FontWeight.w500, decoration: TextDecoration.underline, decorationThickness: 2.0)),
                  TextSpan(text: ' and '),
                  TextSpan(text: 'Privacy Policy', style: TextStyle(fontSize: 12, color: Colors.blue, fontWeight: FontWeight.w500, decoration: TextDecoration.underline, decorationThickness: 2.0)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
