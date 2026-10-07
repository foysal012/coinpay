import 'package:coinpay/utils/app_utils.dart';
import 'package:coinpay/view/widget/custom_searchable_drop_down_box.dart';
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

  final List<String> countries = [
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cabo Verde',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czechia',
    'Democratic Republic of the Congo',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Eswatini',
    'Ethiopia',
    'Fiji',
    'Finland',
    'France',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Grenada',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Ivory Coast',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'North Korea',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Palestine',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russia',
    'Rwanda',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Vincent and the Grenadines',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Korea',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Timor-Leste',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Tuvalu',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United Kingdom',
    'United States',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Vatican City',
    'Venezuela',
    'Vietnam',
    'Yemen',
    'Zambia',
    'Zimbabwe',
  ];

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

                Text('Country'),
                AppStyle.gap5,
                CustomSearchableDropDownBox<String>(
                      dropDownKey: dropDownKey,
                      dropDownItems: countries,
                      dropDownBuilder: (context, selectedItem) {
                        return Text('$selectedItem',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ));
                      },
                      labelText: 'Country',
                      hintText: "Country",
                      searchBoxHintText: "Search county by name",
                      compareFn: (item1, item2) {
                        return item1 == item2;
                      },
                      filterFn: (item, filter) {
                        if(item.toLowerCase().contains(filter.toString().toLowerCase())){
                          return true;
                        } else{
                          return false;
                        }
                      },
                      itemBuilder: (context, item, isDisabled, isSelected, ) {
                        return CustomSearchableDropdownItemBuilder(
                            isSelected: isSelected,
                            item: item
                        );
                      },
                      onChange: (value) {

                      },
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
