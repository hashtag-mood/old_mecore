import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/custom_cupertino_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CupertinoMonthYearPicker {
  DateTime selectedDate = DateTime.now();
  int selectedMonth = DateTime.now().month;
  List<String> months = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN',
    'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];
  int selectedYear = DateTime.now().year;
  int yearIndex = DateTime.now().year - 1900;

  Future<void> selectDate(BuildContext context, Function(int) onMonthChanged,
      Function(int) onYearChanged, Function(DateTime) onDateChanged) async {
    await showCupertinoModalPopup(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) {
        return Center(
          child: Container(
            width: appbarLength(context) * 5.5 + 2,
            height: appbarLength(context) * 5 + 2,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: blackColor),
              color: backgroundColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: appbarLength(context) * 2.75,
                      height: appbarLength(context) * 4,
                      child: CustomCupertinoPicker(
                        // month
                        itemExtent: appbarLength(context),
                        controller: FixedExtentScrollController(initialItem: selectedMonth - 1), // TODO Question
                        onChangedCallback: (int index) {
                          selectedMonth = index + 1;
                          onMonthChanged(selectedMonth);
                        },
                        dateTimeList: List.generate(
                          12,
                          (index) {
                            return Align(
                              alignment: Alignment.center,
                              child: Text(months[index],
                                style: TextStyle(
                                  color: blackColor, fontFamily: 'Unbounded SemiBold',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: appbarLength(context) * 2.75,
                      height: appbarLength(context) * 4,
                      child: CustomCupertinoPicker(
                        // year
                        itemExtent: appbarLength(context),
                        controller: FixedExtentScrollController(initialItem: yearIndex),
                        onChangedCallback: (int index) {
                          selectedYear = 1900 + index;
                          onYearChanged(selectedYear);
                        },
                        dateTimeList: List.generate(
                          201,
                          (index) {
                            return Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${1900 + index}',
                                style: TextStyle(
                                  color: blackColor, fontFamily: 'Unbounded SemiBold',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: appbarLength(context) * 5.5,
                  height: appbarLength(context),
                  decoration: BoxDecoration(
                    border: Border(top: mainBorderSide),
                  ),
                  child: CupertinoButton(
                    color: backgroundColor,
                    borderRadius: BorderRadius.zero,
                    child: Text(
                      'DONE',
                      style: TextStyle(
                        fontFamily: 'Interop Regular',
                        color: blackColor,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
