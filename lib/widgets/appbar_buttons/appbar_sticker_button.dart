import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarStickerButton extends StatelessWidget {
  const AppbarStickerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: appbarLength(context),
        decoration: BoxDecoration(
          border: Border(right: mainBorderSide),
        ),
        child: IconButton(
          highlightColor: Colors.transparent,
          alignment: Alignment.center,
          onPressed: () {},
          icon: Icon(CupertinoIcons.lasso),
          iconSize: appbarLength(context) * 0.55,
        ),
      ),
    );
  }
}
