import 'package:flutter/material.dart';
import 'package:portfolio/style/colors/colors.dart';

import '../../core/constants/size.dart';

// Light Mode CheckBox ThemeData
class LightModeCheckBoxTheme {
  LightModeCheckBoxTheme._();

  static final LightModeCheckBoxTheme _instance = LightModeCheckBoxTheme._();

  factory LightModeCheckBoxTheme() => _instance;

  final LightModeColors _color = LightModeColors();

  CheckboxThemeData get checkBoxThemeData => CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return _color.primaryColor;
      } else {
        return _color.blackColor;
      }
    }),

    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return _color.primaryColor;
      } else {
        return _color.transparentColor;
      }
    }),

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(checkBoxRadiusSize),
    ),
  );
}

// Dark Mode CheckBox ThemeData
class DarkModeCheckBoxTheme {
  DarkModeCheckBoxTheme._();

  static final DarkModeCheckBoxTheme _instance = DarkModeCheckBoxTheme._();

  factory DarkModeCheckBoxTheme() => _instance;

  final DarkModeColors _color = DarkModeColors();

  CheckboxThemeData get checkBoxThemeData => CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return _color.primaryColor;
      } else {
        return _color.blackColor;
      }
    }),

    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return _color.primaryColor;
      } else {
        return _color.transparentColor;
      }
    }),

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(checkBoxRadiusSize),
    ),
  );
}