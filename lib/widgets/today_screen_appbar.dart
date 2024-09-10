import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/appbar/appbar_date_picker_button.dart';
import 'package:diary/utils/appbar/appbar_popup_menu_button.dart';
import 'package:diary/utils/appbar/appbar_search_icon_button.dart';
import 'package:diary/utils/appbar/appbar_user_image.dart';
import 'package:diary/utils/appbar/appbar_menu_icon_button.dart';
import 'package:diary/utils/custom_date_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayScreenAppbar extends StatefulWidget {
  const TodayScreenAppbar({super.key});

  @override
  State<TodayScreenAppbar> createState() => _TodayScreenAppbarState();
}

class _TodayScreenAppbarState extends State<TodayScreenAppbar> {
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
          AppbarPopupMenuButton(),
        ],
      ),
    );
  }
}
