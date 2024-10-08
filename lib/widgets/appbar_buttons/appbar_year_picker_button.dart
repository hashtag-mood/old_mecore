import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/ui/custom_material_date_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/material.dart';

class AppbarYearPickerButton extends StatelessWidget {
  final VoidCallback onPressedCallback;
  const AppbarYearPickerButton({super.key, required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: SizedBox(
        height: appbarLength(context),
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
            customMaterialDatePicker.selectedDate.year.toString(),
            style: dateTextStyle(context),
          ),
        ),
      ),
    );
  }
}
