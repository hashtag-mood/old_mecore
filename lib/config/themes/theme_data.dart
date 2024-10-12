import 'package:diary/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';

/// color: white
final backgroundColor = Color(0xFFFFFFFF);

/// color: black, width: 1
final mainBorderSide = BorderSide(
  color: blackColor,
  width: 1,
);

// color: #FF7DAD
final drawerDividerColor = Color(0xffFF7DAD);

final lightPinkColor = Color(0xffFFA2C4);

// final dateTextStyle = TextStyle(
//   fontVariations: [FontVariation('wght', 600)],
//   fontFamily: 'Public Sans',
//   fontSize: 25,
//   color: Color(0xFF000000),
// );

/// fontFamily: Unbounded SemiBold, fontSize: appbarLength(context) * 0.38, color: black
TextStyle dateTextStyle(BuildContext context) {
  return TextStyle(
      fontFamily: 'Unbounded SemiBold',
      fontSize: appbarLength(context) * 0.38,
      color: blackColor);
}

/// fontSize
TextStyle drawerListTileFontStyle(BuildContext context) {
  if (kIsWeb) {
    return TextStyle(
      fontSize: 20,
    );
  } else if (Platform.isWindows) {
    return TextStyle(
      fontSize: 20,
    );
  } else {
    return TextStyle(
      fontSize: 18,
    );
  }
}

double drawerListTileLeadingWidth(BuildContext context) {
  return 24;
}

double drawerWidth(BuildContext context) {
  return appbarLength(context) * 5;
}

/// color: silver
final drawerUserCalendarEmojiColor = Color(0xFFC5C5C5);

/// color: black
final blackColor = Color(0xff000000);

ThemeData customThemeData() {
  return ThemeData(
    colorScheme: ColorScheme.light(),
  );
}

final textSilverColor = Color(0xffCBCBCB);

final textDarkSilverColor = Color(0xff9c9c9c);

double recordCellHeight(BuildContext context) {
  return (MediaQuery.of(context).size.height -
      MediaQuery.of(context).padding.top -
      MediaQuery.of(context).padding.bottom -
      appbarLength(context) * 2 -
      2) /
      12;
}

final saturdayColor = Color(0xff1030BA);

final sundayColor = Color(0xffD42A00);