import 'package:flutter/material.dart';
import '../../../../resources/constant/app_color.dart';
import '../../../../resources/constant/app_style.dart';
import 'create_account_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key, required this.phone});

  final String phone;

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {

  final otpTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios_new)
          ),
          backgroundColor: Colors.white,
          elevation: 0.5
      ),

      body: Container(
        padding: AppStyle.padding10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Confirm your Phone', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
            Text('We send 6 digits code to ${widget.phone}', style: TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w500),),
            AppStyle.gap20,


            Text('OTP'),
            AppStyle.gap5,

            TextFormField(
              controller: otpTextController,
              maxLines: 1,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: AppStyle.radius10,
                      borderSide: BorderSide(
                          color: AppColor.primaryColor,
                          width: 2.0
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: AppStyle.radius10,
                      borderSide: BorderSide(
                          color: AppColor.primaryColor,
                          width: 2.0
                      )
                  ),
                  hintText: "please enter valid otp"
              ),
            ),
            AppStyle.gap10,

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Didn\'t get a code? ',
                style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  TextSpan(text: 'Resend', style: TextStyle(fontSize: 12, color: AppColor.primaryColor, fontWeight: FontWeight.w500, decoration: TextDecoration.underline, decorationThickness: 2.0)),
                ],
              ),
            ),
            AppStyle.gap20,

            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAccountScreen()));
              },
              padding: EdgeInsets.symmetric(vertical: 8.0),
              height: 44.0,
              minWidth: MediaQuery.sizeOf(context).width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0))
              ),
              textColor: Colors.white,
              color: AppColor.primaryColor,
              child: Text('Verify Your Number'),
            ),

          ],
        ),
      ),
    );
  }
}
