import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/utils/ui/custom_material_date_picker.dart';
import 'package:mecore/utils/utils.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_date_picker_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_menu_icon_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_refresh_icon_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_search_icon_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_user_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarScreenAppbar extends StatefulWidget {
  const CalendarScreenAppbar({super.key});

  @override
  State<CalendarScreenAppbar> createState() => _CalendarScreenAppbarState();
}

class _CalendarScreenAppbarState extends State<CalendarScreenAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: appbarLength(context),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.symmetric(
          horizontal: mainBorderSide,
        ),
      ),
      child: Row(
        children: [
          AppbarMenuIconButton(),
          AppbarUserImage(),
          AppbarDatePickerButton(
            onPressedCallback: () async {
              await customMaterialDatePicker.selectDate(context, () {
                setState(
                  () {},
                );
              });
            },
          ),
          AppbarSearchIconButton(),
          AppbarRefreshIconButton(onPressedCallback: () {
            setState(() {
              customMaterialDatePicker.refreshDate();
            });
          }),
        ],
      ),
    );
  }
}
