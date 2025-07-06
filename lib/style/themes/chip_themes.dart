import 'package:flutter/material.dart';
import 'package:flutterappstartertemplate/style/colors/colors.dart';

// Light Mode Chip Theme
class LightModeChipTheme {
  LightModeChipTheme._();
  static final LightModeChipTheme _instance = LightModeChipTheme._();
  factory LightModeChipTheme() => _instance;

  final LightModeColors _color = LightModeColors();

  ChipThemeData get chipThemeData => ChipThemeData(
    disabledColor: _color.disabledBackgroundColor.withValues(alpha: 0.4),
    selectedColor: _color.primaryColor,
    checkmarkColor: _color.whiteColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
  );
}

// Dark Mode Chip Theme
class DarkModeChipTheme {
  DarkModeChipTheme._();
  static final DarkModeChipTheme _instance = DarkModeChipTheme._();
  factory DarkModeChipTheme() => _instance;

  final DarkModeColors _color = DarkModeColors();

  ChipThemeData get chipThemeData => ChipThemeData(
    disabledColor: _color.disabledBackgroundColor.withValues(alpha: 0.4),
    selectedColor: _color.primaryColor,
    checkmarkColor: _color.whiteColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
  );
}