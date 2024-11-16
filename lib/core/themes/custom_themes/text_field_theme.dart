import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'text_theme.dart';

class TextFormFieldManager {
  TextFormFieldManager._();

  static InputDecorationTheme lightTextFormField = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ColorsManager.grey,
    suffixIconColor: ColorsManager.grey,
    // fillColor: MyColors.greyOpacity,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: TextThemeManager.lightTextTheme.bodyMedium,
    hintStyle: TextThemeManager.lightTextTheme.labelLarge,
    errorStyle: TextThemeManager.lightTextTheme.labelMedium,
    //
    floatingLabelStyle: TextThemeManager.lightTextTheme.bodyMedium,
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: ColorsManager.greylight)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: ColorsManager.greylight)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:
            const BorderSide(width: 1, color: ColorsManager.mainPurple)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: ColorsManager.red)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 2, color: ColorsManager.orange)),
  );

  static InputDecorationTheme darkTextFormField = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ColorsManager.grey,
    suffixIconColor: ColorsManager.grey,
    // fillColor: MyColors.greyOpacity,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: TextThemeManager.darkTextTheme.bodyMedium,
    hintStyle: TextThemeManager.darkTextTheme.labelLarge,
    errorStyle: TextThemeManager.darkTextTheme.labelMedium,
    //
    floatingLabelStyle: TextThemeManager.darkTextTheme.bodyMedium,
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: ColorsManager.greylight)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: ColorsManager.greylight)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: ColorsManager.white)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: ColorsManager.red)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 2, color: ColorsManager.orange)),
  );
}
