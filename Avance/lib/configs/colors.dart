import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF645749);
  static const Color secondaryColor = Color(0xFFD9C6B7);
  static const Color backgroundColor = Color(0xFFF4ECEC);
  static const Color textColor = Color(0xFF393333);

  static Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? secondaryColor
        : backgroundColor;
  }

  static Color getSecondaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? primaryColor
        : secondaryColor;
  }

  static Color getButtonText(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textColor
        : Colors.white;
  }
}
