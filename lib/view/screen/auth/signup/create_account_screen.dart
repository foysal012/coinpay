import 'package:flutter/material.dart';
import '../../../../resources/constant/app_color.dart';
import '../../../../resources/constant/app_style.dart';
import 'account_setup_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {

  final phoneTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool isObscureText = true;

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    phoneTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

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
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create an Account', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
              Text('Enter your mobile number to verify your account', style: TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w500),),
              AppStyle.gap20,


              Text('Phone'),
              AppStyle.gap5,

              TextFormField(
                controller: phoneTextController,
                maxLines: 1,
                keyboardType: TextInputType.number,
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
                    errorBorder: OutlineInputBorder(
                        borderRadius: AppStyle.radius10,
                        borderSide: BorderSide(
                            color: AppColor.appRed,
                            width: 2.0
                        )
                    ),
                    hintText: "please enter valid phone",
                ),
                validator: (value) {
                  if(value.toString().isEmpty){
                    return "Please Enter Valid phone";
                  } else if(value.toString().length>11 || value.toString().length<11){
                    return "Invalid phone";
                  } else if(!value.toString().startsWith('0')){
                    return "Invalid phone";
                  } else {
                    return null;
                  }
                },
              ),
              AppStyle.gap10,

              Text('Password'),
              AppStyle.gap5,

              TextFormField(
                controller: passwordTextController,
                obscuringCharacter: '*',
                obscureText: isObscureText,
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
                    errorBorder: OutlineInputBorder(
                        borderRadius: AppStyle.radius10,
                        borderSide: BorderSide(
                            color: AppColor.appRed,
                            width: 2.0
                        )
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          isObscureText = ! isObscureText;
                          setState(() {

                          });
                        },
                        icon: Icon(isObscureText?Icons.visibility_off_outlined:Icons.remove_red_eye_outlined)
                    )
                ),
                validator: (value) {
                  if(value.toString().isEmpty){
                    return "Please Enter Valid password";
                  } else if(value.toString().length>12){
                    return "Too long password";
                  } else if(value.toString().length<8){
                    return "Too short password";
                  } else {
                    return null;
                  }
                },
              ),
              AppStyle.gap20,

              MaterialButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully account created')));
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountSetupScreen()));
                  }
                },
                padding: EdgeInsets.symmetric(vertical: 8.0),
                height: 44.0,
                minWidth: MediaQuery.sizeOf(context).width,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0))
                ),
                textColor: Colors.white,
                color: AppColor.primaryColor,
                child: Text('Sign up'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
