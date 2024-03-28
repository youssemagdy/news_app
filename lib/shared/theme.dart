import 'package:flutter/material.dart';
import 'package:news_apps_2/shared/app_color.dart';

class AppTheme{
  // ignore: constant_identifier_names, non_constant_identifier_names
  static ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      primary: AppColors.primaryColor,
    ),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        toolbarHeight: 90,
        backgroundColor: AppColors.primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      titleTextStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      iconTheme: const IconThemeData(
        size: 20,
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      labelMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.textDrawerColor,
      ),
    ),
    iconTheme: IconThemeData(
      size: 30,
      color: AppColors.textDrawerColor,
    ),
  );
}