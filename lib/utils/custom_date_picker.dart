import 'package:diary/themes/theme_data.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

CustomDatePicker customDatePicker = CustomDatePicker();

class CustomDatePicker {
  DateTime _selectedDate = DateTime.now();
  late DateTime picked;

  DateTime get selectedDate => _selectedDate;

  Future<void> selectDate(
      BuildContext context, VoidCallback selectDateCallback) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      helpText: 'SELECT DATE',
      cancelText: 'CANCEL',
      confirmText: 'OK',
      fieldLabelText: 'ENTER DATE',
      fieldHintText: 'MM/DD/YYYY',
      switchToCalendarEntryModeIcon: const Icon(
        Icons.calendar_today_sharp,
      ),
      switchToInputEntryModeIcon: const Icon(Icons.type_specimen_sharp),
      barrierColor: Colors.transparent,
      builder: (context, child) {
        return Theme(
          data: ThemeData().copyWith(
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
              dayShape: const WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              dayOverlayColor: WidgetStatePropertyAll(drawerDividerColor),
              weekdayStyle: TextStyle(
                fontFamily: 'Unbounded Regular',
                color: blackColor,
              ),
              yearStyle: const TextStyle(
                fontFamily: 'Unbounded Light',
              ),
              inputDecorationTheme: const InputDecorationTheme(
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                floatingLabelStyle: TextStyle(
                  fontFamily: 'Interop Regular',
                  fontSize: 15,
                ),
                hintStyle: TextStyle(
                  fontFamily: 'Interop Regular',
                ),
                errorStyle: TextStyle(
                  fontFamily: 'Interop Regular',
                ),
              ),
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
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      _selectedDate = picked;
      selectDateCallback();
    }
  }

  void refreshDate() {
    _selectedDate = DateTime.now();
  }
}
