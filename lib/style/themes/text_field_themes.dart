import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/size.dart';
import 'package:portfolio/style/colors/colors.dart';
import 'package:portfolio/style/themes/text_themes.dart';

// Light Mode TextField Theme
class LightModeTextFieldTheme {
  LightModeTextFieldTheme._();

  static final LightModeTextFieldTheme _instance = LightModeTextFieldTheme._();

  factory LightModeTextFieldTheme() => _instance;

  final LightModeColors _color = LightModeColors();
  final LightModeTextTheme _textTheme = LightModeTextTheme();

  // Input Field Theme Data
  InputDecorationTheme get inputFieldTheme => InputDecorationTheme(
    errorMaxLines: fieldErrorMaxLines,
    prefixIconColor: _color.iconColor,
    suffixIconColor: _color.prefixAndSuffixColor,
    labelStyle: _textTheme.textTheme.labelLarge,
    hintStyle: _textTheme.textTheme.labelMedium,
    errorStyle: _textTheme.textTheme.labelMedium,
    floatingLabelStyle: _textTheme.textTheme.labelMedium,
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(
        width: borderSizeWidth,
        color: _color.borderSideColor,
      ),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(
        width: borderSizeWidth,
        color: _color.borderSideColor,
      ),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(
        width: borderSizeWidth,
        color: _color.focusedColor,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(width: 2, color: _color.focusedErrorColor),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(width: borderSizeWidth, color: _color.errorColor),
    ),
  );
}

// Dark Mode TextField Theme
class DarkModeTextFieldTheme {
  DarkModeTextFieldTheme._();

  static final DarkModeTextFieldTheme _instance = DarkModeTextFieldTheme._();

  factory DarkModeTextFieldTheme() => _instance;

  final DarkModeColors _color = DarkModeColors();
  final DarkModeTextTheme _textTheme = DarkModeTextTheme();

  // Input Field Theme Data
  InputDecorationTheme get inputFieldTheme => InputDecorationTheme(
    errorMaxLines: fieldErrorMaxLines,
    prefixIconColor: _color.iconColor,
    suffixIconColor: _color.prefixAndSuffixColor,
    labelStyle: _textTheme.textTheme.labelLarge,
    hintStyle: _textTheme.textTheme.labelMedium,
    errorStyle: _textTheme.textTheme.labelMedium,
    floatingLabelStyle: _textTheme.textTheme.labelMedium,
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(
        width: borderSizeWidth,
        color: _color.borderSideColor,
      ),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(
        width: borderSizeWidth,
        color: _color.borderSideColor,
      ),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(
        width: borderSizeWidth,
        color: _color.focusedColor,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(width: 2, color: _color.focusedErrorColor),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(fieldRadiusSize),
      borderSide: BorderSide(width: borderSizeWidth, color: _color.errorColor),
    ),
  );
}