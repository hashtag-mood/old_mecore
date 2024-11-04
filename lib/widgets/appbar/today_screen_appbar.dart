import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/modules/bloc/date_cubit.dart';
import 'package:mecore/utils/ui/custom_material_date_picker.dart';
import 'package:mecore/utils/ui/custom_cupertino_date_picker.dart';
import 'package:mecore/utils/utils.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_date_picker_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_save_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_today_record_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_search_icon_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_sticker_button.dart';
import 'package:mecore/widgets/appbar_buttons/appbar_user_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          AppbarTodayRecordButton(),
          AppbarUserImage(),
          AppbarDatePickerButton(
            onPressedCallback: () async {
              await customCupertinoDatePicker.selectDate(
                context,
                    (month) {
                  context.read<DateCubit>().updateMonth(month);
                },
                    (day) {
                  context.read<DateCubit>().updateDay(day);
                },
                    (year) {
                  context.read<DateCubit>().updateYear(year);
                },
              );
              // await customDatePicker.selectDate(context, () {
              //   setState(
              //     () {},
              //   );
              // },);
            },
          ),
          // AppbarSearchIconButton(),
          AppbarStickerButton(),
          AppbarSaveButton(),
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
