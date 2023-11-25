import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'border_radii.dart';
import 'font_size.dart';

class ThemeConstants {
  //LinearGradientTheme
  static const LinearGradient greenButtonLinearGradientTheme = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xff53E88B), Color(0xff15BE77)],
    stops: [0.01, 1.0],
  );

  static const LinearGradient whiteButtonLinearGradientTheme = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xffFFFFFF), Color(0xffFEFEFF)],
    stops: [0.01, 1.0],
  );

  static LinearGradient bottomNavBarLinearGradientTheme = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xff53E88B).withOpacity(0.5),
      const Color(0xff15BE77).withOpacity(0.5)
    ],
    stops: const [0.01, 1.0],
  );

  // Font Sizes
  static double smallFontSize = FontSizes.size_12;
  static double mediumFontSize = FontSizes.size_16;
  static double largeFontSize = FontSizes.size_24;

  // Border Radii
  static double smallBorderRadius = BorderRadii.size_12;
  static double mediumBorderRadius = BorderRadii.size_16;
  static double largeBorderRadius = BorderRadii.size_24;

  //appBarTheme
  static Color appBarColor = AppColors.white;
  static Color appBarForegroundColor = AppColors.black;

  //textColorTheme
  static Color txtColor = AppColors.black;

  //appTheme
  static Color appTheme = AppColors.green;

  //textTheme
  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.normal,
    ),
    displaySmall: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.normal,
    ),
    headlineSmall: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.normal,
    ),
    titleSmall: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.normal,
    ),
    labelSmall: TextStyle(
      color: ThemeConstants.txtColor,
      fontSize: ThemeConstants.largeFontSize,
      fontWeight: FontWeight.w400,
    ),
  );
}
