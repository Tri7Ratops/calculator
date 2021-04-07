import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calculator_page.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CalculatorPage(),
      ),
    );
  }
}