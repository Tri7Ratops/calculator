import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorLastResult extends StatelessWidget{
  final String value;

  CalculatorLastResult({required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme
          .of(context)
          .textTheme
          .headline2,
      overflow: TextOverflow.ellipsis,
    );
  }
}