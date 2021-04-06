import 'package:calculator/utils/shared_pref.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../widgets/widgets.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  ScrollController _scrollController = ScrollController();

  _operation(value) {
    if (prefsOperation.startsWith("Error.")) {
      prefsOperation = "";
    }

    switch (value) {
      case 'clear':
        prefsOperation = "";
        break;
      case 'all_clear':
        prefsOperation = "";
        prefsLastResult = "";
        break;
      case 'equals':
        try {
          Parser p = Parser();
          Expression exp = p.parse(prefsOperation);
          ContextModel cm = ContextModel();

          prefsLastResult = exp.evaluate(EvaluationType.REAL, cm).toString();
          prefsOperation = "";
        } catch (e) {
          prefsOperation = "Error.";
        }

        break;
      default:
        prefsOperation = prefsOperation + value;
    }
    setState(() {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 50,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 100),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: CalculatorLastResult(
            value: prefsLastResult,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CalculatorResult(
            scrollController: _scrollController,
            value: prefsOperation,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        CalculatorKeyboard(
          callback: _operation,
        )
      ],
    );
  }
}
