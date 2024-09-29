import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/screens/search_screen.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarSearchIconButton extends StatelessWidget {
  const AppbarSearchIconButton({super.key});

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
          onPressed: () {
            Navigator.pushReplacement(
              context,
              CupertinoPageRoute(
                builder: (context) => SearchScreen(),
              ),
            );
          },
          icon: Image.asset(
            'assets/icons/search_48.png',
            width: appbarLength(context) * 0.45,
          ),
        ),
      ),
    );
  }
}
