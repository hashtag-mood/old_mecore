import 'package:diary/screens/monthly_screen.dart';
import 'package:diary/screens/today_screen.dart';
import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/drawer/drawer_divider.dart';
import 'package:diary/utils/drawer/drawer_list_tile.dart';
import 'package:diary/utils/drawer/drawer_logo_image.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayScreenDrawer extends StatelessWidget {
  const TodayScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: appbarLength(context) * 5,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Column(
        children: [
          DrawerLogoImage(),
          Expanded(
            child: Container(
              height: appbarLength(context),
              alignment: Alignment.centerLeft,
              child: ListView(
                children: [
                  DrawerDivider(
                    border: Border(bottom: mainBorderSide),
                  ),
                  DrawerListTile(
                    leading: '💌',
                    title: 'MONTHLY',
                    onTapCallback: () async {
                      await Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => MonthlyScreen(),
                        ),
                      );
                    },
                  ),
                  DrawerListTile(
                    leading: '📍',
                    title: 'TO-DO',
                    onTapCallback: () {},
                  ),
                  DrawerListTile(
                    leading: '🧸',
                    title: 'TODAY',
                    onTapCallback: () async {
                      await Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => TodayScreen(),
                        ),
                      );
                    },
                  ),
                  DrawerListTile(
                    leading: '🖋',
                    title: 'JOURNAL',
                    onTapCallback: () {},
                  ),
                  DrawerListTile(
                    leading: '📓',
                    title: 'RECORD',
                    onTapCallback: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
