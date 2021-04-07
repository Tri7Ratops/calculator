import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

initSharedPrefs({required Function() callback}) async {
  prefs = await SharedPreferences.getInstance();
  callback();
}

String get prefsLastResult => prefs.getString('prefsLastResult') ?? "";
set prefsLastResult(String value) => prefs.setString('prefsLastResult', value);

String get prefsOperation => prefs.getString('prefsOperation') ?? "";
set prefsOperation(String value) => prefs.setString('prefsOperation', value);