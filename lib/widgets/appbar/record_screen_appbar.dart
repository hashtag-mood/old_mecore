import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/ui/custom_year_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          Container(
            width: appbarLength(context) * 5,
            height: appbarLength(context),
            child: TextButton(
              style: ButtonStyle(
                overlayColor: WidgetStatePropertyAll(Colors.transparent),
              ),
              onPressed: () {
                customYearPicker.selectDate(context, (value) {
                  setState(() {
                    customYearPicker.selectedYear = value;
                  });
                },);
              },
              child: Text(customYearPicker.selectedYear.toString(),
                style: TextStyle(
                  color: blackColor,
                  fontFamily: 'Unbounded SemiBold',
                  fontSize: appbarLength(context) * 0.38,
                ),
              ),
            ),
          ),
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
