import 'package:coinpay/resources/constant/app_color.dart';
import 'package:coinpay/resources/constant/app_style.dart';
import 'package:coinpay/view/screen/auth/signup/otp_verification_screen.dart';
import 'package:flutter/material.dart';

class EnterPhoneNumberScreen extends StatefulWidget {
  const EnterPhoneNumberScreen({super.key});

  @override
  State<EnterPhoneNumberScreen> createState() => _EnterPhoneNumberScreenState();
}

class _EnterPhoneNumberScreenState extends State<EnterPhoneNumberScreen> {

  final numberTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => debugPrint('ok'), icon: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Colors.white,
        elevation: 0.5
      ),

      body: Container(
        padding: AppStyle.padding10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Phone Number'),
            AppStyle.gap5,

            TextFormField(
              controller: numberTextController,
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
                hintText: "please enter valid phone number"
              ),
            ),
            AppStyle.gap20,

            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpVerificationScreen(phone: numberTextController.text)));
              },
              padding: EdgeInsets.symmetric(vertical: 8.0),
              height: 44.0,
              minWidth: MediaQuery.sizeOf(context).width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0))
              ),
              textColor: Colors.white,
              color: AppColor.primaryColor,
              child: Text('Send OTP'),
            ),

          ],
        ),
      ),
    );
  }
}
