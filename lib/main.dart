import 'package:calculator/app.dart';
import 'package:calculator/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    initSharedPrefs(callback: () {
      runApp(new CalculatorApp());
    });
  });
}
