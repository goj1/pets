import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';

abstract class CustomTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.primary),
    scaffoldBackgroundColor: AppColors.background,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 15.0,
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      bodyMedium: TextStyle(
        fontSize: 15.0,
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      titleSmall: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      displayLarge: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      displayMedium: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      displaySmall: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      headlineMedium: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      headlineSmall: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
      bodySmall: TextStyle(
        color: AppColors.black,
        fontFamily: 'Quicksand',
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.background,
        systemNavigationBarColor: AppColors.primary,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: AppColors.primary,
      ),
      titleTextStyle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        fontFamily: 'Quicksand',
        color: Color(0xFF0A0807),
      ),
      toolbarTextStyle: const TextStyle(
        color: Color(0xFF212325),
      ),
      backgroundColor: AppColors.background,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.black),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.black),
      ),
      labelStyle: TextStyle(
        fontFamily: 'Quicksand',
        color: AppColors.black,
        fontSize: 18.0,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600,
            letterSpacing: .8,
          ),
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (!states.contains(MaterialState.disabled)) {
              return AppColors.primary;
            } else if (states.contains(MaterialState.disabled)) {
              return AppColors.white;
            } else {
              return AppColors.white;
            }
          },
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            letterSpacing: .8,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (!states.contains(MaterialState.disabled)) {
              return AppColors.primary;
            } else if (states.contains(MaterialState.disabled)) {
              return Colors.grey;
            } else {
              return AppColors.primary;
            }
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (!states.contains(MaterialState.disabled)) {
              return AppColors.white;
            } else if (states.contains(MaterialState.disabled)) {
              return AppColors.white;
            } else {
              return AppColors.white;
            }
          },
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.primary,
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: AppColors.primary),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(AppColors.primary),
      checkColor: MaterialStateProperty.all(AppColors.white),
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
        color: AppColors.white,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: Colors.grey,
      ),
      labelColor: AppColors.white,
      indicator: BoxDecoration(
        color: AppColors.primary,
        // borderRadius: BorderRadius.circular(30.0),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(AppColors.primary),
      overlayColor: MaterialStateProperty.all(AppColors.secondary),
      splashRadius: 14.0,
    ),
  );

  static ThemeData appDarkTheme = ThemeData(
    primaryColor: AppColors.background,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.secondary),
    scaffoldBackgroundColor: AppColors.white,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.white,
      ),
      bodyMedium: TextStyle(
        color: AppColors.white,
      ),
      displayLarge: TextStyle(
        color: AppColors.white,
      ),
      displayMedium: TextStyle(
        color: AppColors.white,
      ),
      displaySmall: TextStyle(
        color: AppColors.white,
      ),
      headlineMedium: TextStyle(
        color: AppColors.white,
      ),
      headlineSmall: TextStyle(
        color: AppColors.white,
      ),
      titleLarge: TextStyle(
        color: AppColors.white,
      ),
      bodySmall: TextStyle(
        color: AppColors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.white,
      ),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),
      backgroundColor: AppColors.primary,
    ),
  );
}
