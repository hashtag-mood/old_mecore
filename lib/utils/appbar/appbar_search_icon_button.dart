import 'package:diary/screens/search_screen.dart';
import 'package:diary/themes/theme_data.dart';
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
          onPressed: () {
            Navigator.pushReplacement(
              context,
              CupertinoPageRoute(
                builder: (context) => SearchScreen(),
              ),
            );
          },
          icon: Icon(Icons.search_sharp),
          iconSize: appbarLength(context) * 0.6,
        ),
      ),
    );
  }
}
