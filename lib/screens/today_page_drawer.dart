import 'package:diary/pages/monthly_page.dart';
import 'package:diary/pages/today_page.dart';
import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/drawer/drawer_divider.dart';
import 'package:diary/utils/drawer/drawer_list_tile.dart';
import 'package:diary/utils/drawer/drawer_logo_image.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayPageDrawer extends StatelessWidget {
  const TodayPageDrawer({super.key});

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
                          builder: (context) => MonthlyPage(),
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
                          builder: (context) => TodayPage(),
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
