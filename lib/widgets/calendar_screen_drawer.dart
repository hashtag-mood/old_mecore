import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/screens/calendar_screen.dart';
import 'package:diary/modules/screens/today_screen.dart';
import 'package:diary/utils/ui/drawer/drawer_divider.dart';
import 'package:diary/utils/ui/drawer/drawer_list_tile.dart';
import 'package:diary/utils/ui/drawer/drawer_logo_image.dart';
import 'package:diary/utils/ui/drawer/drawer_user_calendars_silver.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarScreenDrawer extends StatelessWidget {
  const CalendarScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: drawerWidth(context),
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
                          builder: (context) => CalendarScreen(),
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
                  DrawerDivider(
                    border: Border(top: mainBorderSide, bottom: mainBorderSide),
                  ),
                  DrawerUserCalendarsSilver(
                    emoji: '🦥',
                    title: 'NOT URGENT CALENDAR',
                  ),
                  DrawerUserCalendarsSilver(
                      emoji: '💥', title: 'URGENT CALENDAR'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
