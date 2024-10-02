import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/ui/custom_date_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/appbar/appbar_new_date_picker_button.dart';
import 'package:diary/widgets/appbar/appbar_record_button.dart';
import 'package:diary/widgets/appbar/appbar_search_icon_button.dart';
import 'package:diary/widgets/appbar/appbar_sticker_button.dart';
import 'package:diary/widgets/appbar/appbar_user_image.dart';
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
      height: appbarLength(context),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.symmetric(horizontal: mainBorderSide),
      ),
      child: Row(
        children: [
          AppbarRecordButton(),
          AppbarUserImage(),
          AppbarNewDatePickerButton(
            onPressedCallback: () async {
              await customDatePicker.selectDate(context, () {
                setState(
                  () {},
                );
              },);
              // await newCustomDatePicker.showDatePicker(context);
            },
          ),
          AppbarSearchIconButton(),
          AppbarStickerButton(),
          //AppbarPopupMenuButton(
          //  onSelectedCallback: () {
          //    setState(() {});
          // },
          //),
        ],
      ),
    );
  }
}
