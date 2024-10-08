import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/ui/custom_material_date_picker.dart';
import 'package:diary/utils/ui/custom_cupertino_date_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/appbar_buttons/appbar_date_picker_button.dart';
import 'package:diary/widgets/appbar_buttons/appbar_journal_record_button.dart';
import 'package:diary/widgets/appbar_buttons/appbar_today_record_button.dart';
import 'package:diary/widgets/appbar_buttons/appbar_search_icon_button.dart';
import 'package:diary/widgets/appbar_buttons/appbar_sticker_button.dart';
import 'package:diary/widgets/appbar_buttons/appbar_user_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JournalScreenAppbar extends StatefulWidget {
  const JournalScreenAppbar({super.key});

  @override
  State<JournalScreenAppbar> createState() => _JournalScreenAppbarState();
}

class _JournalScreenAppbarState extends State<JournalScreenAppbar> {
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
          AppbarJournalRecordButton(),
          AppbarUserImage(),
          AppbarDatePickerButton(
            onPressedCallback: () async {
              await customCupertinoDatePicker.selectDate(
                context,
                (value) {
                  setState(() {
                    customCupertinoDatePicker.selectedMonth = value;
                  });
                },
                (value) {
                  setState(() {
                    customCupertinoDatePicker.selectedDay = value;
                  });
                },
                (value) {
                  setState(() {
                    customCupertinoDatePicker.selectedYear = value;
                  });
                },
              );
              // await customDatePicker.selectDate(context, () {
              //   setState(
              //     () {},
              //   );
              // },);
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
