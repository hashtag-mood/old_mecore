import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCupertinoPicker extends StatelessWidget {
  final double itemExtent;
  final FixedExtentScrollController controller;
  Function(int) onChangedCallback;
  List<Widget> dateTimeList;

  CustomCupertinoPicker(
      {super.key,
      required this.itemExtent,
      required this.onChangedCallback,
      required this.controller,
      required this.dateTimeList});

  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      selectionOverlay: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.symmetric(horizontal: mainBorderSide),
        ),
      ),
      backgroundColor: backgroundColor,
      scrollController: controller,
      itemExtent: itemExtent,
      onSelectedItemChanged: onChangedCallback,
      children: dateTimeList,
    );
  }
}
