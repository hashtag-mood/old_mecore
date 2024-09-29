import 'package:diary/config/themes/theme_data.dart';
import 'package:flutter/material.dart';

ThemeData getCustomDatePickerThemeData() {
  return ThemeData().copyWith(
    datePickerTheme: DatePickerThemeData(
      headerHelpStyle: const TextStyle(
        fontFamily: 'Interop Regular',
      ),
      dividerColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(
          color: blackColor,
        ),
      ),
      // dayShape: WidgetStatePropertyAll(
      //   CircleBorder(
      //     side: BorderSide(
      //       color: Colors.transparent,
      //       width: 1.5,
      //     ),
      //     eccentricity: double.minPositive,
      //   ),
      // ),
      dayShape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.zero,
        ),
      ),
      dayOverlayColor: WidgetStatePropertyAll(drawerDividerColor),
      weekdayStyle: TextStyle(
        fontFamily: 'Unbounded Regular',
        fontSize: 17,
        color: blackColor,
      ),
      yearStyle: const TextStyle(
        fontFamily: 'Unbounded Light',
      ),
      todayBorder: BorderSide(
        width: 1.5,
      ),
      elevation: 0,
    ),
    colorScheme: ColorScheme.light(
      primary: backgroundColor,
      onPrimary: blackColor,
      surface: drawerDividerColor,
      shadow: Colors.transparent,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Unbounded Light',
        fontSize: 13,
      ),
      headlineLarge: TextStyle(
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
