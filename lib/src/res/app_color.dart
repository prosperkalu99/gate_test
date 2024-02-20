import 'package:flutter/material.dart';
import 'package:test_app/src/res/hex_color.dart';

class AppColor {
  AppColor._();

  ///light
  static Color primaryColor = HexColor("#0B0B0B");
  static Color bgColor = HexColor("#E3E0DA");
  static Color secondaryColor = HexColor("#F6B822");
  static Color primaryLightColor = HexColor("#EFF6FF");
  static Color textColor = HexColor("#232D3F");
  static Color disabledColor = Colors.black.withOpacity(0.3);
  static Color errorColor = HexColor("#E03737");
  static Color successColor = HexColor("#00BD56");
  static Color warningColor = secondaryColor;

}
