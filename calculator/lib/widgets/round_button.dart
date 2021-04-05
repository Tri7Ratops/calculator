import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Function() onPressed;
  final String label;

  final double size;
  final bool dualButton;
  final Color backgroundColor;
  final Color textColor;

  RoundButton({Key? key, required this.onPressed, required this.label, this.backgroundColor = Colors.grey, this.textColor = Colors.white, this.size = 50, this.dualButton = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size * (dualButton ? 2 : 1),
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                )
            ),
          ),
          onPressed: onPressed,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              label,
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
