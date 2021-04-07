import 'package:calculator/utils/size_utils.dart';
import 'package:calculator/widgets/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorKeyboard extends StatelessWidget {
  final Function(String) callback;

  CalculatorKeyboard({required this.callback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _line1(context),
        _line2(context),
        _line3(context),
        _line4(context),
        _line5(context),
      ],
    );
  }

  Row _line1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("clear"),
          label: "C",
        ),
        RoundButton(
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("all_clear"),
          label: "AC",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("%"),
          label: "%",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("/"),
          label: "/",
        ),
      ],
    );
  }

  Row _line2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("7"),
          label: "7",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("8"),
          label: "8",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("9"),
          label: "9",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("*"),
          label: "*",
        ),
      ],
    );
  }

  Row _line3(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("4"),
          label: "4",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("5"),
          label: "5",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("6"),
          label: "6",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("-"),
          label: "-",
        ),
      ],
    );
  }

  Row _line4(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("1"),
          label: "1",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("2"),
          label: "2",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("3"),
          label: "3",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("+"),
          label: "+",
        ),
      ],
    );
  }

  Row _line5(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          dualButton: true,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("0"),
          label: "0",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("."),
          label: ".",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () => callback("equals"),
          label: "=",
        ),
      ],
    );
  }
}
