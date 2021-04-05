import 'package:calculator/widgets/round_button.dart';
import 'package:flutter/cupertino.dart';

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundButton(
          onPressed: () {},
          label: "C",
        ),
      ],
    );
  }
}
