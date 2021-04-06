import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorLastResult extends StatelessWidget {
  final String value;

  CalculatorLastResult({required this.value});

  _copy(BuildContext context) {
    Clipboard.setData(new ClipboardData(text: value));
    final snackBar = SnackBar(content: Text('Résultat copié dans le presse-papiers !'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        (value.isEmpty) ? Container() : IconButton(
          icon: Icon(Icons.copy),
          color: Theme.of(context).primaryColor,
          iconSize: Theme.of(context).textTheme.headline2!.fontSize! / 2,
          onPressed: () => _copy(context),
        ),
        Expanded(
          child: SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Text(
              value,
              style: Theme.of(context).textTheme.headline2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }
}
