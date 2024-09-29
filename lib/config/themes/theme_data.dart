import 'package:diary/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';

/// color: white
final backgroundColor = Color(0xFFFFFFFF);

/// color: black, width: 1
final mainBorderSide = BorderSide(
  color: Color(0xFF000000),
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
      color: Color(0xFF000000));
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
