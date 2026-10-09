import 'package:coinpay/resources/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../../resources/constant/app_style.dart';
import 'account_verification_info_screen.dart';

class AccountVerificationScreen extends StatelessWidget {
  const AccountVerificationScreen({super.key});

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
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: AppStyle.padding10,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppStyle.gap30,
          
              Lottie.asset(
                'assets/asset/fourth.json',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
              AppStyle.gap20,
          
              Text('Setting up your account',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  )
              ),
              AppStyle.gap5,
          
              Text('We are analyzing your data to verify',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0
                  )
              ),
              AppStyle.gap10,

              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.primaryColor.withValues(alpha: 0.3)
                  ),
                  alignment: AlignmentGeometry.center,
                  child: Text('1'),
                ),
                title: Text('Profile Verified'),
                trailing: Icon(Icons.check_circle, color: AppColor.primaryColor,),
              ),
              Divider(
                indent: 10.0,
                endIndent: 10.0,
                color: AppColor.primaryColor.withValues(alpha: 0.3),
                thickness: 1,
              ),

              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.primaryColor.withValues(alpha: 0.3)
                  ),
                  alignment: AlignmentGeometry.center,
                  child: Text('2'),
                ),
                title: Text('Checking up document ID'),
                trailing: Icon(Icons.check_circle, color: AppColor.primaryColor,),
              ),
              Divider(
                indent: 10.0,
                endIndent: 10.0,
                color: AppColor.primaryColor.withValues(alpha: 0.3),
                thickness: 1,
              ),

              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.primaryColor.withValues(alpha: 0.3)
                  ),
                  alignment: AlignmentGeometry.center,
                  child: Text('3'),
                ),
                title: Text('Verifying photo'),
                trailing: Icon(Icons.circle_outlined, color: AppColor.primaryColor,),
              ),
              AppStyle.gap20,

              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountVerificationInfoScreen()));
                },
                padding: EdgeInsets.symmetric(vertical: 8.0),
                height: 44.0,
                minWidth: MediaQuery.sizeOf(context).width,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0))
                ),
                textColor: Colors.white,
                color: AppColor.primaryColor,
                child: Text('Next'),
              ),
              AppStyle.gap20,
            ],
          ),
        ),
      ),
    );
  }
}
