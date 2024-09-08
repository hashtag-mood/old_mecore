import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/appbar/appbar_date_picker_button.dart';
import 'package:diary/utils/appbar/appbar_refresh_icon_button.dart';
import 'package:diary/utils/appbar/appbar_search_icon_button.dart';
import 'package:diary/utils/appbar/appbar_user_image.dart';
import 'package:diary/utils/custom_date_picker.dart';
import 'package:diary/utils/appbar/appbar_menu_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonthlyPageAppbar extends StatefulWidget {
  const MonthlyPageAppbar({super.key});

  @override
  State<MonthlyPageAppbar> createState() => _MonthlyPageAppbarState();
}

class _MonthlyPageAppbarState extends State<MonthlyPageAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.symmetric(horizontal: mainBorderSide),
      ),
      child: Row(
        children: [
          AppbarMenuIconButton(),
          AppbarUserImage(),
          AppbarDatePickerButton(
            onPressedCallback: () async {
              await customDatePicker.selectDate(context, () {
                setState(
                  () {},
                );
              });
            },
          ),
          AppbarSearchIconButton(),
          AppbarRefreshIconButton(onPressedCallback: () {
            setState(() {
              customDatePicker.refreshDate();
            });
          }),
        ],
      ),
    );
  }
}
