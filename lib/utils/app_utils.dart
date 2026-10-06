import 'package:intl/intl.dart';

class AppUtils {



  static String setDateDMY(String dateVale){
    return DateFormat('dd/MM/yyyy').format(DateTime.parse(dateVale));
  }

  static String setDateYMD(String dateVale){
    return DateFormat('yyyy/MM/dd').format(DateTime.parse(dateVale));
  }
}