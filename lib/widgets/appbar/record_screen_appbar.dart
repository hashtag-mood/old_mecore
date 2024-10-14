import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/bloc/month_year_cubit.dart';
import 'package:diary/modules/models/month_year.dart';
import 'package:diary/utils/ui/cupertino_month_year_picker.dart';
import 'package:diary/utils/ui/custom_year_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class RecordScreenAppBar extends StatefulWidget {
  const RecordScreenAppBar({super.key});

  @override
  State<RecordScreenAppBar> createState() => _RecordScreenAppBarState();
}

class _RecordScreenAppBarState extends State<RecordScreenAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: Border.symmetric(horizontal: mainBorderSide),
      automaticallyImplyLeading: false,
      surfaceTintColor: backgroundColor,
      backgroundColor: backgroundColor,
      flexibleSpace: Row(
        children: [
          Container(
            width: appbarLength(context),
            height: appbarLength(context),
            child: IconButton(
              highlightColor: Colors.transparent,
              alignment: Alignment.center,
              onPressed: () {
                context.pop(true);
              },
              icon: Icon(
                CupertinoIcons.arrow_left,
                color: blackColor,
              ),
              iconSize: appbarLength(context) * 0.55,
            ),
          ),
          BlocBuilder<MonthYearCubit, MonthYear>(builder: (context, state) {
            return SizedBox(
              width: appbarLength(context) * 5,
              height: appbarLength(context),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                ),
                onPressed: () async {
                  await CupertinoMonthYearPicker().selectDate(
                    context,
                    (month) {
                      context.read<MonthYearCubit>().updateMonth(month);
                    },
                    (year) {
                      context.read<MonthYearCubit>().updateYear(year);
                    },
                  );
                },
                child: Text(
                  DateFormat('MMM yyyy').format(state.dateTime).toUpperCase(),
                  style: TextStyle(
                    color: blackColor,
                    fontFamily: 'Unbounded SemiBold',
                    fontSize: appbarLength(context) * 0.38,
                  ),
                ),
              ),
            );
          }),
          Container(
            width: appbarLength(context),
            height: appbarLength(context),
            child: IconButton(
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: Align(
                alignment: Alignment.center,
                child: Icon(
                  CupertinoIcons.trash,
                  color: blackColor,
                ),
              ),
              iconSize: appbarLength(context) * 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
