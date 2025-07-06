import 'package:flutter/material.dart';
import 'package:flutterappstartertemplate/style/colors/colors.dart';
import 'package:flutterappstartertemplate/style/themes/appbar_themes.dart';
import 'package:flutterappstartertemplate/style/themes/bottom_sheet_themes.dart';
import 'package:flutterappstartertemplate/style/themes/button_themes.dart';
import 'package:flutterappstartertemplate/style/themes/checkbox_themes.dart';
import 'package:flutterappstartertemplate/style/themes/chip_themes.dart';
import 'package:flutterappstartertemplate/style/themes/text_field_themes.dart';
import 'package:flutterappstartertemplate/style/themes/text_themes.dart';

// Light ThemeData
class LightModeThemeData {
  LightModeThemeData._();

  static final LightModeThemeData _instance = LightModeThemeData._();
  factory LightModeThemeData() => _instance;

  final LightModeColors _color = LightModeColors();
  final LightModeTextTheme _textTheme = LightModeTextTheme();
  final LightModeChipTheme _chipTheme = LightModeChipTheme();
  final LightModeAppbarTheme _appbarTheme = LightModeAppbarTheme();
  final LightModeButtonTheme _buttonTheme = LightModeButtonTheme();
  final LightModeCheckBoxTheme _checkBoxTheme = LightModeCheckBoxTheme();
  final LightModeTextFieldTheme _textFieldTheme = LightModeTextFieldTheme();
  final LightModeBottomSheetTheme _bottomSheetTheme =
      LightModeBottomSheetTheme();

  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Poppins",
    scaffoldBackgroundColor: _color.backgroundColor,
    primaryColor: _color.primaryColor,
    textTheme: _textTheme.textTheme,
    appBarTheme: _appbarTheme.appbarTheme,
    bottomSheetTheme: _bottomSheetTheme.bottomSheetThemeData,
    checkboxTheme: _checkBoxTheme.checkBoxThemeData,
    elevatedButtonTheme: _buttonTheme.elevatedButtonThemeData,
    textButtonTheme: _buttonTheme.textButtonThemeData,
    outlinedButtonTheme: _buttonTheme.outlinedButtonThemeData,
    chipTheme: _chipTheme.chipThemeData,
    inputDecorationTheme: _textFieldTheme.inputFieldTheme,
  );
}

// Dark ThemeData
class DarkModeThemeData {
  DarkModeThemeData._();
  static final DarkModeThemeData _instance = DarkModeThemeData._();
  factory DarkModeThemeData() => _instance;

  final DarkModeColors _color = DarkModeColors();
  final DarkModeTextTheme _textTheme = DarkModeTextTheme();
  final DarkModeChipTheme _chipTheme = DarkModeChipTheme();
  final DarkModeAppbarTheme _appbarTheme = DarkModeAppbarTheme();
  final DarkModeButtonTheme _buttonTheme = DarkModeButtonTheme();
  final DarkModeCheckBoxTheme _checkBoxTheme = DarkModeCheckBoxTheme();
  final DarkModeTextFieldTheme _textFieldTheme = DarkModeTextFieldTheme();
  final DarkModeBottomSheetTheme _bottomSheetTheme = DarkModeBottomSheetTheme();

  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Poppins",
    scaffoldBackgroundColor: _color.backgroundColor,
    primaryColor: _color.primaryColor,
    textTheme: _textTheme.textTheme,
    appBarTheme: _appbarTheme.appbarTheme,
    bottomSheetTheme: _bottomSheetTheme.bottomSheetThemeData,
    checkboxTheme: _checkBoxTheme.checkBoxThemeData,
    elevatedButtonTheme: _buttonTheme.elevatedButtonThemeData,
    outlinedButtonTheme: _buttonTheme.outlinedButtonThemeData,
    chipTheme: _chipTheme.chipThemeData,
    inputDecorationTheme: _textFieldTheme.inputFieldTheme,
  );
}