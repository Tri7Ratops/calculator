import 'package:flutter/cupertino.dart';

class SizeUtils {
  static double height(BuildContext context) => MediaQuery.of(context).size.height;
  static double width(BuildContext context) => MediaQuery.of(context).size.width;

  static double buttonSize(BuildContext context, int nbButton) {
    double reference = SizeUtils.width(context) ;
    if (SizeUtils.height(context) / 2 < reference) {
      reference = SizeUtils.height(context) / 2;
    }
    return reference / nbButton;
  }
}