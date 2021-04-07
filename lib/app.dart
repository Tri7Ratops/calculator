import 'package:calculator/config/routes.dart';
import 'package:calculator/views/calculator/calculator.dart';
import 'package:flutter/material.dart';

import 'config/theme.dart';

class CalculatorApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: mainTheme,
      initialRoute: Routes.calculator,
      routes: {Routes.calculator: (context) => CalculatorScreen()},
    );
  }
}
