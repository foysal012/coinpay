import 'package:coinpay/utils/app_utils.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../../../../resources/constant/app_color.dart';
import '../../../../resources/constant/app_style.dart';

class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({super.key});

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {

  final emailTextController = TextEditingController();
  final addressTextController = TextEditingController();
  final cityTextController = TextEditingController();
  final postcodeTextController = TextEditingController();
  final fullNameTextController = TextEditingController();
  final userNameTextController = TextEditingController();
  final dateOfBirthTextController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final dropDownKey = GlobalKey<DropdownSearchState>();

  @override
  void dispose() {
    emailTextController.dispose();
    addressTextController.dispose();
    cityTextController.dispose();
    postcodeTextController.dispose();
    fullNameTextController.dispose();
    userNameTextController.dispose();
    dateOfBirthTextController.dispose();
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Add your email', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                Text('This info needs to be accurate with your id document', style: TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w500),),
                AppStyle.gap20,
            
                Text('Email'),
                AppStyle.gap5,
            
                TextFormField(
                  controller: emailTextController,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
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
                    hintText: "example@gmail.com",
                  ),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "Please Enter Valid phone";
                    } else if(value.toString().contains('@')){
                      return "Invalid email";
                    } else if(!value.toString().endsWith('gmail.com')){
                      return "Invalid email";
                    } else {
                      return null;
                    }
                  },
                ),
                AppStyle.gap20,
            
                Text('Home address', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                Text('This info needs to be accurate with your id document', style: TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w500),),
                AppStyle.gap20,
            
                Text('Address line'),
                AppStyle.gap5,
            
                TextFormField(
                  controller: addressTextController,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
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
                    hintText: "Toronto, Canada",
                  ),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "Please Enter Valid Address";
                    } else {
                      return null;
                    }
                  },
                ),
                AppStyle.gap10,
            
                Text('City'),
                AppStyle.gap5,
            
                TextFormField(
                  controller: cityTextController,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
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
                    hintText: "City, State",
                  ),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "Please Enter Valid phone";
                    } else {
                      return null;
                    }
                  },
                ),
                AppStyle.gap10,
            
                Text('Postcode'),
                AppStyle.gap5,
            
                TextFormField(
                  controller: postcodeTextController,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
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
                    hintText: "Ex:00000",
                  ),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "Please Enter Valid postcode";
                    } else {
                      return null;
                    }
                  },
                ),
                AppStyle.gap10,
            
                AppStyle.gap20,
            
                Text('Add your personal info', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                Text('This info needs to be accurate with your id document', style: TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w500),),
                AppStyle.gap20,
            
                Text('Full Name'),
                AppStyle.gap5,
            
                TextFormField(
                  controller: fullNameTextController,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
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
                    hintText: "Mr. John Doe",
                  ),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "Please Enter Valid Name";
                    } else {
                      return null;
                    }
                  },
                ),
                AppStyle.gap10,
            
                Text('Username'),
                AppStyle.gap5,
            
                TextFormField(
                  controller: userNameTextController,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
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
                    hintText: "@userName",
                    prefixIcon: Icon(Icons.alternate_email)
                  ),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return "Please Enter Valid username";
                    } else {
                      return null;
                    }
                  },
                ),
                AppStyle.gap10,
            
                Text('Date of Birth'),
                AppStyle.gap5,
            
                GestureDetector(
                  onTap: () async{
                    DateTime? date = await showDatePicker(
                        context: context, 
                        firstDate: DateTime(2020), 
                        lastDate: DateTime.now(),
                    );
                    debugPrint("okey${date}");
                    dateOfBirthTextController.text = AppUtils.setDateDMY('$date');
                  },
                  child: TextFormField(
                    controller: dateOfBirthTextController,
                    maxLines: 1,
                    enabled: false,
                    keyboardType: TextInputType.text,
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
                      hintText: "MM/DD/YYYY",
                      prefixIcon: Icon(Icons.calendar_month)
                    ),
                    validator: (value) {
                      if(value.toString().isEmpty){
                        return "Please Enter Valid date of birth";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                AppStyle.gap10,

                DropdownSearch<String>(
                  key: dropDownKey,
                  selectedItem: '',
                  itemAsString: (item) => item,
                  compareFn: (i1, i2) => i1 == i2,
                  items: (filter, infiniteScrollProps) => ,
                  decoratorProps: DropDownDecoratorProps(
                    decoration: InputDecoration(
                      labelText: 'ui mode: ',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  popupProps: PopupProps.menu(
                      fit: FlexFit.loose, constraints: BoxConstraints()),
                ),
                AppStyle.gap20,
            
                // MaterialButton(
                //   onPressed: () {
                //     if(formKey.currentState!.validate()){
                //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully account created')));
                //     }
                //   },
                //   padding: EdgeInsets.symmetric(vertical: 8.0),
                //   height: 44.0,
                //   minWidth: MediaQuery.sizeOf(context).width,
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadiusGeometry.all(Radius.circular(20.0))
                //   ),
                //   textColor: Colors.white,
                //   color: AppColor.primaryColor,
                //   child: Text('Sign up'),
                // ),
                AppStyle.gap20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
