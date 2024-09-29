import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/ui/custom_date_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/material.dart';

class AppbarDatePickerButton extends StatelessWidget {
  final VoidCallback onPressedCallback;
  const AppbarDatePickerButton({super.key, required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: appbarLength(context),
        decoration: BoxDecoration(
          border: Border(right: mainBorderSide),
        ),
        child: TextButton(
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
            alignment: Alignment.center,
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            ),
          ),
          onPressed: onPressedCallback,
          child: Text(
            formatDate(customDatePicker.selectedDate),
            style: dateTextStyle(context),
          ),
        ),
      ),
    );
  }
}
