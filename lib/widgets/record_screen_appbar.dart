import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecordScreenAppBar extends StatelessWidget {
  const RecordScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: Border.symmetric(horizontal: mainBorderSide),
      backgroundColor: backgroundColor,
      leading: SizedBox(
        width: appbarLength(context),
        child: IconButton(
          highlightColor: Colors.transparent,
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          onPressed: () {
            context.pop(true);
          },
          icon: Icon(CupertinoIcons.arrow_left),
          iconSize: appbarLength(context) * 0.55,
        ),
      ),
      actions: [
        SizedBox(
          width: appbarLength(context),
          child: IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.trash),
          ),
        ),
      ],
    );
  }
}
