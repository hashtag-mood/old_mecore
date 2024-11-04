import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/modules/bloc/date_cubit.dart';
import 'package:mecore/modules/models/date.dart';
import 'package:mecore/utils/ui/custom_material_date_picker.dart';
import 'package:mecore/utils/ui/custom_cupertino_date_picker.dart';
import 'package:mecore/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppbarDatePickerButton extends StatelessWidget {
  final VoidCallback onPressedCallback;
  const AppbarDatePickerButton({super.key, required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DateCubit, Date>(
      builder: (context, state) {
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
              child: Text('${state.dateTime.month.toString().padLeft(2, '0')}/${state.dateTime.day.toString().padLeft(2, '0')}/${state.dateTime.year.toString().substring(2)}',
                style: dateTextStyle(context),
              ),
            ),
          ),
        );
      }
    );
  }
}
