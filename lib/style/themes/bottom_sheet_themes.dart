import 'package:flutter/material.dart';
import 'package:flutterappstartertemplate/style/colors/colors.dart';

// Light Mode Bottom Sheet Theme Data
class LightModeBottomSheetTheme {
  LightModeBottomSheetTheme._();

  static final LightModeBottomSheetTheme _instance =
      LightModeBottomSheetTheme._();

  factory LightModeBottomSheetTheme() => _instance;

  final LightModeColors _color = LightModeColors();

  BottomSheetThemeData get bottomSheetThemeData => BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: _color.backgroundColor,
    modalBackgroundColor: _color.backgroundColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}

// Dark Mode Bottom Sheet Theme Data
class DarkModeBottomSheetTheme {
  DarkModeBottomSheetTheme._();

  static final DarkModeBottomSheetTheme _instance =
      DarkModeBottomSheetTheme._();

  factory DarkModeBottomSheetTheme() => _instance;

  final DarkModeColors _color = DarkModeColors();

  BottomSheetThemeData get bottomSheetThemeData => BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: _color.backgroundColor,
    modalBackgroundColor: _color.backgroundColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}