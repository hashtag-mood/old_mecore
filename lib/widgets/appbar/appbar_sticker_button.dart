import 'package:diary/utils/utils.dart';
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
        child: IconButton(
          highlightColor: Colors.transparent,
          alignment: Alignment.center,
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/plus_48.png',
            width: appbarLength(context) * 0.45,
          ),
        ),
      ),
    );
  }
}
