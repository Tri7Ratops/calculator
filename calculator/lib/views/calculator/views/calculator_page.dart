import 'package:calculator/widgets/round_button.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/widgets.dart';

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CalculatorKeyboard()
      ],
    );
  }
}
