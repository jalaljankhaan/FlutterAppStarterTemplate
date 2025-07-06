import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size.dart';
import 'package:portfolio/style/colors/colors.dart';
import 'package:portfolio/style/themes/text_themes.dart';

// Light Mode Button Theme
class LightModeButtonTheme {
  LightModeButtonTheme._();

  static final LightModeButtonTheme _instance = LightModeButtonTheme._();

  factory LightModeButtonTheme() => _instance;

  final LightModeColors _color = LightModeColors();
  final LightModeTextTheme _textTheme = LightModeTextTheme();

  // Elevated Button Theme
  ElevatedButtonThemeData get elevatedButtonThemeData =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return _color.disabledForegroundColor;
            }
            return _color.foregroundColor;
          }),
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return _color.disabledBackgroundColor;
            }
            return _color.primaryColor;
          }),
          side: WidgetStateProperty.all(BorderSide(color: _color.primaryColor)),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 16)),
          textStyle: WidgetStateProperty.all(_textTheme.textTheme.bodyLarge),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonRadiusSize),
            ),
          ),
        ),
      );

  // Outlined Button Theme
  OutlinedButtonThemeData get outlinedButtonThemeData =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: _color.foregroundColor,
          side: BorderSide(color: _color.primaryColor),
          padding: EdgeInsets.symmetric(vertical: 16),
          textStyle: _textTheme.textTheme.bodyLarge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadiusSize),
          ),
        ),
      );

  // Text Button Theme
  TextButtonThemeData get textButtonThemeData => TextButtonThemeData(
    style: TextButton.styleFrom(
      elevation: 0,
      foregroundColor: _color.foregroundColor,
      side: BorderSide(color: _color.primaryColor),
      padding: EdgeInsets.symmetric(vertical: 16),
      textStyle: _textTheme.textTheme.bodyLarge?.copyWith(
        color: _color.whiteColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(buttonRadiusSmallSize),
          right: Radius.circular(buttonRadiusSmallSize),
        ),
      ),
    ),
  );
}

// Dark Mode Button Theme
class DarkModeButtonTheme {
  DarkModeButtonTheme._();

  static final DarkModeButtonTheme _instance = DarkModeButtonTheme._();

  factory DarkModeButtonTheme() => _instance;

  final DarkModeColors _color = DarkModeColors();
  final DarkModeTextTheme _textTheme = DarkModeTextTheme();

  // Elevated Button Theme Data
  ElevatedButtonThemeData get elevatedButtonThemeData =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return _color.disabledForegroundColor;
            }
            return _color.foregroundColor;
          }),
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return _color.disabledBackgroundColor;
            }
            return _color.primaryColor;
          }),
          side: WidgetStateProperty.all(BorderSide(color: _color.primaryColor)),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 16)),
          textStyle: WidgetStateProperty.all(_textTheme.textTheme.bodyLarge),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonRadiusSize),
            ),
          ),
        ),
      );

  // Outlined Button Theme
  OutlinedButtonThemeData get outlinedButtonThemeData =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: _color.foregroundColor,
          side: BorderSide(color: _color.primaryColor),
          padding: EdgeInsets.symmetric(vertical: 16),
          textStyle: _textTheme.textTheme.bodyLarge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadiusSize),
          ),
        ),
      );

  // Text Button Theme
  TextButtonThemeData get textButtonThemeData => TextButtonThemeData(
    style: TextButton.styleFrom(
      elevation: 0,
      side: BorderSide(color: _color.primaryColor),
      padding: EdgeInsets.symmetric(vertical: 16),
      textStyle: _textTheme.textTheme.bodyLarge?.copyWith(
        color: _color.whiteColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(buttonRadiusSmallSize),
          right: Radius.circular(buttonRadiusSmallSize),
        ),
      ),
    ),
  );
}