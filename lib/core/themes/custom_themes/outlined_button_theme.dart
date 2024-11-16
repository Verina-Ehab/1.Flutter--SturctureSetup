import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'text_theme.dart';

class OutlinedButtonThemeManager {
  OutlinedButtonThemeManager._();

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: ColorsManager.black,
    side: const BorderSide(color: ColorsManager.greylight),
    textStyle: TextThemeManager.lightTextTheme.titleMedium,
    padding: const EdgeInsets.symmetric(
      vertical: 15,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: ColorsManager.white,
    side: const BorderSide(color: ColorsManager.greylight),
    textStyle: TextThemeManager.lightTextTheme.titleMedium,
    padding: const EdgeInsets.symmetric(
      vertical: 15,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));
}
