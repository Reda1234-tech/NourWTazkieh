import 'package:flutter/material.dart';

class ScreenUtil {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double blockSizeHorizontal(BuildContext context, double percentage) =>
      screenWidth(context) * (percentage / 100);
  static double blockSizeVertical(BuildContext context, double percentage) =>
      screenHeight(context) * (percentage / 100);
}
