import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorResult extends StatelessWidget {
  final ScrollController? scrollController;
  final String value;

  CalculatorResult({required this.value, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      child: Text(
        value,
        style: Theme
            .of(context)
            .textTheme
            .headline1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}