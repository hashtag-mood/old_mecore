import 'dart:io';

import 'package:diary/config/themes/color_picker_theme_data.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/screens/today_record_screen.dart';
import 'package:diary/widgets/calendar_screen_appbar.dart';
import 'package:diary/widgets/today_screen_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

double appbarLength(BuildContext context) {
  return MediaQuery.of(context).size.width / 7;
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double musicContainerHeight(BuildContext context) {
  return (appbarLength(context) * 2) - (appbarLength(context) * 5 / 7);
}

String formatDate(DateTime date) {
  String year = date.year.toString().substring(2);
  String month = date.month.toString().padLeft(2, '0');
  String day = date.day.toString().padLeft(2, '0');
  return '$month/$day/$year';
}

String hourText(int index) {
  List<String> hourTextList = [];
  for (int i = 4; i < 28; i++) {
    if (i <= 11) {
      hourTextList.add('${i + 1}');
    } else if (i >= 12 && i <= 23) {
      hourTextList.add('${i - 11}');
    } else if (i >= 24) {
      hourTextList.add('${i - 23}');
    }
  }

  return hourTextList[index];
}
