import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

NewCustomDatePicker newCustomDatePicker = NewCustomDatePicker();

class NewCustomDatePicker {
  DateTime selectedDate = DateTime.now();

  Future<Widget> showDatePicker(BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      isDismissible: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            border: Border(top: mainBorderSide),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.zero,
              child: CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime newDate) {
                  selectedDate = newDate;
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
