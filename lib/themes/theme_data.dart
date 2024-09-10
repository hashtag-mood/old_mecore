import 'package:diary/utils/utils.dart';
import 'package:flutter/material.dart';

/// color: white
final backgroundColor = Color(0xFFFFFFFF);

/// color: black, width: 1
final mainBorderSide = BorderSide(
  color: Color(0xFF000000),
  width: 1,
);

// color: #FF7DAD
final drawerDividerColor = Color(0xffFF7DAD);

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

/// fontSize: appbarLength(context) * 0.17
TextStyle drawerListTileFontStyle(BuildContext context) {
  return TextStyle(
    fontSize: appbarLength(context) * 5 * 0.06,
  );
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
