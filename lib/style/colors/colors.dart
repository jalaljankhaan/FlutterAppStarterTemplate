import 'package:flutter/material.dart';

// Dark Mode Colors
class LightModeColors {
  LightModeColors._();

  static final LightModeColors _instance = LightModeColors._();
  factory LightModeColors() => _instance;

  Color get labelTextColor => primaryColor;
  Color get textColor => Colors.black;
  Color get paragraphTextColor => Color(0xff94979C);

  Color get primaryColor => Color(0xff7F56D9);
  Color get backgroundColor => Colors.white;

  Color get foregroundColor => Colors.white;
  Color get disabledBackgroundColor => Colors.grey;
  Color get disabledForegroundColor => Colors.grey;

  Color get iconColor => Colors.black;
  Color get transparentColor => Colors.transparent;

  Color get whiteColor => Colors.white;
  Color get blackColor => Colors.black;

  Color get focusedColor => Color(0xff7F56D9);
  Color get focusedErrorColor => Colors.redAccent;
  Color get prefixAndSuffixColor => Colors.grey;
  Color get borderSideColor => Colors.grey;
  Color get errorColor => Colors.red;
}

// Dark Mode Colors
class DarkModeColors {
  DarkModeColors._();

  static final DarkModeColors _instance = DarkModeColors._();
  factory DarkModeColors() => _instance;

  Color get labelTextColor => primaryColor;
  Color get textColor => Colors.white;
  Color get paragraphTextColor => Color(0xff94979C);
  Color get primaryColor => Color(0xff7F56D9);
  Color get backgroundColor => Colors.black;

  Color get foregroundColor => Colors.white;
  Color get disabledBackgroundColor => Colors.grey;
  Color get disabledForegroundColor => Colors.grey;

  Color get iconColor => Colors.white;
  Color get transparentColor => Colors.transparent;

  Color get whiteColor => Colors.white;
  Color get blackColor => Colors.black;

  Color get focusedColor => Color(0xff7F56D9);
  Color get focusedErrorColor => Colors.redAccent;
  Color get prefixAndSuffixColor => Colors.grey;
  Color get borderSideColor => Colors.grey;
  Color get errorColor => Colors.red;
}