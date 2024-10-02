import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/ui/custom_date_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecordScreenAppBar extends StatelessWidget {
  const RecordScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: Border.symmetric(horizontal: mainBorderSide),
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      flexibleSpace: Row(
        children: [
          SizedBox(
            width: appbarLength(context),
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
          SizedBox(
            width: appbarLength(context) * 5,
          ),
          SizedBox(
            width: appbarLength(context),
            child: IconButton(
              padding: EdgeInsets.zero,
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
