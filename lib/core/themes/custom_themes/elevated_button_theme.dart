import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'text_theme.dart';

class ElevetedButtonThemeManager {
  ElevetedButtonThemeManager._();

  // -- Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        // maximumSize: Size.infinite,
        // minimumSize: Size.infinite *0.4,
        elevation: 0,
        foregroundColor: ColorsManager.white,
        backgroundColor: ColorsManager.mainPurple,
        disabledForegroundColor: ColorsManager.grey,
        disabledBackgroundColor: ColorsManager.grey,
        side: const BorderSide(color: ColorsManager.greylight),
        padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: TextThemeManager.darkTextTheme.headlineSmall,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );

  // -- Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: ColorsManager.white,
        backgroundColor: ColorsManager.mainPurple,
        disabledForegroundColor: ColorsManager.grey,
        disabledBackgroundColor: ColorsManager.grey,
        side: const BorderSide(color: ColorsManager.greylight),
        padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: TextThemeManager.darkTextTheme.headlineSmall,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );
}
