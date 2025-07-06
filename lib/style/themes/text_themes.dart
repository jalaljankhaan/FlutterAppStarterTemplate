import 'package:flutter/material.dart';

import '../colors/colors.dart';

// Text Theme for Light Mode
class LightModeTextTheme {
  LightModeTextTheme._();

  static final LightModeTextTheme _instance = LightModeTextTheme._();

  factory LightModeTextTheme() => _instance;

  final LightModeColors _color = LightModeColors();

  TextTheme get textTheme => TextTheme(
    // Headlines
    headlineLarge: TextStyle().copyWith(
      fontWeight: FontWeight.w500,
      color: _color.textColor,
    ),
    headlineMedium: TextStyle().copyWith(
      fontWeight: FontWeight.w600,
      color: _color.textColor,
    ),
    headlineSmall: TextStyle().copyWith(
      fontWeight: FontWeight.w600,
      color: _color.textColor,
    ),

    // Titles
    titleLarge: TextStyle().copyWith(
      fontWeight: FontWeight.w600,
      color: _color.textColor,
    ),
    titleMedium: TextStyle().copyWith(
      fontWeight: FontWeight.w500,
      color: _color.textColor,
    ),
    titleSmall: TextStyle().copyWith(
      fontWeight: FontWeight.w400,
      color: _color.textColor,
    ),

    // Labels
    labelLarge: TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: _color.labelTextColor,
    ),
    labelMedium: TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: _color.labelTextColor.withValues(alpha: 0.5),
    ),
    labelSmall: TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: _color.labelTextColor,
    ),
    // Body
    bodyLarge: TextStyle().copyWith(
      fontWeight: FontWeight.w400,
      color: _color.paragraphTextColor,
    ),
    bodyMedium: TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: _color.paragraphTextColor,
    ),
    bodySmall: TextStyle().copyWith(
      fontWeight: FontWeight.w300,
      color: _color.paragraphTextColor.withValues(alpha: 0.5),
    ),
  );
}

// Text Theme for Dark Mode
class DarkModeTextTheme {
  final DarkModeColors _color = DarkModeColors();

  TextTheme get textTheme => TextTheme(
    // Headlines
    headlineLarge: TextStyle().copyWith(
      fontWeight: FontWeight.bold,
      color: _color.textColor,
    ),
    headlineMedium: TextStyle().copyWith(
      fontWeight: FontWeight.w600,
      color: _color.textColor,
    ),
    headlineSmall: TextStyle().copyWith(
      fontWeight: FontWeight.w600,
      color: _color.textColor,
    ),

    // Titles
    titleLarge: TextStyle().copyWith(
      fontWeight: FontWeight.w600,
      color: _color.textColor,
    ),
    titleMedium: TextStyle().copyWith(
      fontWeight: FontWeight.w500,
      color: _color.textColor,
    ),
    titleSmall: TextStyle().copyWith(
      fontWeight: FontWeight.w400,
      color: _color.textColor,
    ),

    // Labels
    labelLarge: TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: _color.labelTextColor,
    ),
    labelMedium: TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: _color.labelTextColor.withValues(alpha: 0.5),
    ),
    labelSmall: TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: _color.labelTextColor,
    ),
    // Body
    bodyLarge: TextStyle().copyWith(
      fontWeight: FontWeight.w400,
      color: _color.paragraphTextColor,
    ),
    bodyMedium: TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      color: _color.paragraphTextColor,
    ),
    bodySmall: TextStyle().copyWith(
      fontWeight: FontWeight.w300,
      color: _color.paragraphTextColor,
    ),
  );
}