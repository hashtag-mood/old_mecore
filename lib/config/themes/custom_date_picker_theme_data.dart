import 'package:flutter/material.dart';
import 'package:mecore/config/themes/theme_data.dart';

ThemeData getCustomDatePickerThemeData() {
  return ThemeData().copyWith(
    datePickerTheme: DatePickerThemeData(

      headerHelpStyle: const TextStyle(
        fontFamily: 'Interop Regular',
      ),

      todayForegroundColor: WidgetStatePropertyAll(blackColor),
      todayBackgroundColor: WidgetStatePropertyAll(lightPinkColor),
      dividerColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(
          color: blackColor,
        ),
      ),
      dayShape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(
            strokeAlign: BorderSide.strokeAlignCenter,
            color: blackColor,
          ),
        ),
      ),
      weekdayStyle: TextStyle(
        fontFamily: 'Helmet Neue',
        fontSize: 22,
        color: blackColor,
      ),
      yearStyle: TextStyle(
        fontFamily: 'Unbounded Light',
      ),
      elevation: 0,
      todayBorder: BorderSide(strokeAlign: BorderSide.strokeAlignCenter,),
    ),
    colorScheme: ColorScheme.light(
      primary: blackColor,
      onPrimary: backgroundColor,
      surface: backgroundColor,
      shadow: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Unbounded Light',
        fontSize: 13,
      ),
      headlineLarge: const TextStyle(
        fontFamily: 'Helmet Neue',
        fontSize: 40,
        letterSpacing: -1,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(blackColor),
        textStyle: WidgetStateTextStyle.resolveWith(
          (states) {
            return const TextStyle(
              fontFamily: 'Interop Regular',
            );
          },
        ),
      ),
    ),
  );
}
