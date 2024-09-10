import 'package:flutter/material.dart';

double appbarLength(BuildContext context) {
  return MediaQuery.of(context).size.width / 7;
}

String formatDate(DateTime date) {
  String year = date.year.toString().substring(2);
  String month = date.month.toString().padLeft(2, '0');
  String day = date.day.toString().padLeft(2, '0');
  return '$month/$day/$year';
}
