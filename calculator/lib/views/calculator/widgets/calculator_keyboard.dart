import 'package:calculator/utils/size_utils.dart';
import 'package:calculator/widgets/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorKeyboard extends StatefulWidget {
  CalculatorKeyboard({Key? key}) : super(key: key);

  @override
  _CalculatorKeyboardState createState() => _CalculatorKeyboardState();
}

class _CalculatorKeyboardState extends State<CalculatorKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _line1(),
        _line2(),
        _line3(),
        _line4(),
        _line5(),
      ],
    );
  }

  Row _line1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "C",
        ),
        RoundButton(
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "AC",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "%",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "/",
        ),
      ],
    );
  }

  Row _line2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "7",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "8",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "9",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "*",
        ),
      ],
    );
  }

  Row _line3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "4",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "5",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "6",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "-",
        ),
      ],
    );
  }

  Row _line4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "1",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "2",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "3",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "+",
        ),
      ],
    );
  }

  Row _line5() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          dualButton: true,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "0",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).accentColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: ".",
        ),
        RoundButton(
          backgroundColor: Theme.of(context).primaryColor,
          size: SizeUtils.buttonSize(context, 4),
          onPressed: () {},
          label: "=",
        ),
      ],
    );
  }
}
