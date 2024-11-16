import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/navbar_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    // fontFamily: 'Cairo',
    brightness: Brightness.light,
    primaryColor: ColorsManager.white,
    scaffoldBackgroundColor: ColorsManager.white,
    textTheme: TextThemeManager.lightTextTheme,
    appBarTheme: AppBarThemeManager.lightAppBarTheme,
    elevatedButtonTheme: ElevetedButtonThemeManager.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeManager.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldManager.lightTextFormField,
    navigationBarTheme: NavBarThemeManager.lightNavBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TextThemeManager.darkTextTheme,
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    // fontFamily: 'Cairo',
    brightness: Brightness.dark,
    primaryColor: ColorsManager.black,
    scaffoldBackgroundColor: ColorsManager.black,
    elevatedButtonTheme: ElevetedButtonThemeManager.darkElevatedButtonTheme,
    appBarTheme: AppBarThemeManager.darkAppBarTheme,
    outlinedButtonTheme: OutlinedButtonThemeManager.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldManager.darkTextFormField,
    navigationBarTheme: NavBarThemeManager.darkNavBarTheme,
  );

  AppThemeManager._();
}
