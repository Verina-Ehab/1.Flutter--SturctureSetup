import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class NavBarThemeManager {
  NavBarThemeManager._();

  static NavigationBarThemeData lightNavBarTheme = NavigationBarThemeData(
    // height: 100,
    backgroundColor: ColorsManager.black,
    indicatorColor: ColorsManager.whiteOpacity,
  );

  static NavigationBarThemeData darkNavBarTheme = NavigationBarThemeData(
    backgroundColor: ColorsManager.mainPurple,
    indicatorColor: ColorsManager.whiteOpacity,
  );
}
