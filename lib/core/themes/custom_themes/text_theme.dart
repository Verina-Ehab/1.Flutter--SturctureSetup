import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TextThemeManager {
  // The underscore (_) prefix in front of the constructor name indicates that it's private.
  // This means it can only be called from within the same class
  // class is intended to be a singleton, meaning there should only be one instance of the class available throughout the application.
  TextThemeManager._();

  // -- Customized Light Text Theme
  // to use it "Theme.of(context).textTheme.bodyMedium"
  static TextTheme lightTextTheme = TextTheme(
    //Headlines_font 32_BlackBold
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: FontWeight.w600,
        color: ColorsManager.black),
    //Headlines_font 24_BlackBold

    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: ColorsManager.black),
    //Buttons_font 18_WhiteBold
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: ColorsManager.white),

    //Text_font 14_BlackBold
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: ColorsManager.black),
    //Text_font 14_Grey
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: ColorsManager.grey),
    //Text_font 24_MainColorBold
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: ColorsManager.mainPurple),

    //Text_font 14_LightGrey
    labelLarge: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: ColorsManager.greylight),
    //Text_font 12_Red
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: ColorsManager.red),
    //snackbar_text 12_White
    labelSmall: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: ColorsManager.white),
  );

  // -- Customized Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    //Headlines_font 32_WhiteBold
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: FontWeight.w600,
        color: ColorsManager.white),
    //Headlines_font 24_WhiteBold
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: ColorsManager.white),
    //Buttons_font 18_WhiteBold
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: ColorsManager.white),
//Text_font 14_WhiteBold
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white),
    //Text_font 14_Grey
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: ColorsManager.grey),
    //Text_font 24_MainColorBold
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: ColorsManager.mainPurple),
//Text_font 14_LightGrey
    labelLarge: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: ColorsManager.greylight),
    //Text_font 12_Red
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: ColorsManager.red),
    //snackbar_text 12_White
    labelSmall: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: ColorsManager.white),
  );
}
