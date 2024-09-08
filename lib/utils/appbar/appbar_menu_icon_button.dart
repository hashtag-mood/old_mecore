import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/material.dart';

class AppbarMenuIconButton extends StatelessWidget {
  const AppbarMenuIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: appbarLength(context),
        decoration: BoxDecoration(
          border: Border(right: mainBorderSide),
        ),
        child: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu_sharp),
            iconSize: appbarLength(context) * 0.6,
          );
        }),
      ),
    );
  }
}
