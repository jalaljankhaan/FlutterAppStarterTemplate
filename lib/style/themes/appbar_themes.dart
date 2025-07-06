import 'package:flutter/material.dart';
import 'package:portfolio/style/colors/colors.dart';
import 'package:portfolio/style/themes/text_themes.dart';

import '../../core/constants/size.dart';

// Light Mode AppBar Theme
class LightModeAppbarTheme {
  LightModeAppbarTheme._();

  static final LightModeAppbarTheme _instance = LightModeAppbarTheme._();

  factory LightModeAppbarTheme() => _instance;

  final LightModeColors _color = LightModeColors();
  final LightModeTextTheme _textTheme = LightModeTextTheme();

  AppBarTheme get appbarTheme => AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: _color.transparentColor,
    surfaceTintColor: _color.transparentColor,
    iconTheme: IconThemeData(size: iconNormalSize, color: _color.iconColor),
    actionsIconTheme: IconThemeData(
      size: actionIconSize,
      color: _color.iconColor,
    ),
    titleTextStyle: _textTheme.textTheme.headlineSmall,
  );
}

// Dark Mode AppBar Theme
class DarkModeAppbarTheme {
  DarkModeAppbarTheme._();

  static final DarkModeAppbarTheme _instance = DarkModeAppbarTheme._();

  factory DarkModeAppbarTheme() => _instance;

  final DarkModeColors _color = DarkModeColors();
  final DarkModeTextTheme _textTheme = DarkModeTextTheme();

  AppBarTheme get appbarTheme => AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: _color.transparentColor,
    surfaceTintColor: _color.transparentColor,
    iconTheme: IconThemeData(size: iconNormalSize, color: _color.iconColor),
    actionsIconTheme: IconThemeData(
      size: iconNormalSize,
      color: _color.iconColor,
    ),
    titleTextStyle: _textTheme.textTheme.headlineSmall,
  );
}