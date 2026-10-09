import 'package:coinpay/resources/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import '../../../../../resources/constant/app_style.dart';

class AccountVerificationInfoScreen extends StatelessWidget {
  const AccountVerificationInfoScreen({super.key});

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

              Lottie.asset('assets/asset/fifth.json',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
              AppStyle.gap20,

              Text('Take selfie to verify your identity',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  )
              ),
              AppStyle.gap5,

              Text('Quic and easy identification using phones camera confirm your identity with a self captured photo',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0
                  )
              ),
              AppStyle.gap20,

              // MaterialButton(
              //   onPressed: () {
              //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully account setup done')));
              //     // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountVerificationScreen()));
              //   },
              //   padding: EdgeInsets.symmetric(vertical: 8.0),
              //   height: 44.0,
              //   minWidth: MediaQuery.sizeOf(context).width,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0))
              //   ),
              //   textColor: Colors.white,
              //   color: AppColor.primaryColor,
              //   child: Text('Next'),
              // ),
              
              InkWell(
                onTap: () {

                  final image = ImagePicker().pickImage(source: ImageSource.camera);

                  if(image.toString().isNotEmpty){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Placeholder()));
                  }

                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primaryColor
                  ),
                  child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                ),
              ),
              AppStyle.gap10,

              Text('Take a selfie',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  )
              ),
              AppStyle.gap20,
            ],
          ),
        ),
      ),
    );
  }
}
