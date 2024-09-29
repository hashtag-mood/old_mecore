import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/screens/calendar_screen.dart';
import 'package:diary/modules/screens/journal_screen.dart';
import 'package:diary/modules/screens/record_screen.dart';
import 'package:diary/modules/screens/setting_screen.dart';
import 'package:diary/modules/screens/tasks_screen.dart';
import 'package:diary/modules/screens/today_edit_screen.dart';
import 'package:diary/modules/screens/today_screen.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _todayNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _calendarNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _journalNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _settingNavigatorKey =
    GlobalKey<NavigatorState>();

final _router = GoRouter(
  initialLocation: '/today',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return BottomNavigationBar(
          index: navigationShell.currentIndex,
          navigationShell: navigationShell,
          onDestinationSelected: (index) {
            navigationShell.goBranch(index,
                initialLocation: index == navigationShell.currentIndex);
          },
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _todayNavigatorKey,
          routes: [
            GoRoute(
              path: '/today',
              builder: (context, state) => TodayScreen(
                recordPath: '/record',
                editPath: '/edit',
              ),
              routes: [
                GoRoute(
                  path: 'edit',
                  builder: (context, state) => TodayEditScreen(),
                ),
                GoRoute(
                  path: 'record',
                  builder: (context, state) => RecordScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _calendarNavigatorKey,
          routes: [
            GoRoute(
              path: '/calendar',
              builder: (context, state) => CalendarScreen(
                tasksPath: '/tasks',
              ),
              routes: [
                GoRoute(
                  path: 'tasks',
                  builder: (context, state) => TasksScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _journalNavigatorKey,
          routes: [
            GoRoute(
              path: '/journal',
              builder: (context, state) => JournalScreen(),
              routes: [
                GoRoute(
                  path: 'record',
                  builder: (context, state) => RecordScreen(),
                )
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _settingNavigatorKey,
          routes: [
            GoRoute(
              path: '/setting',
              builder: (context, state) => SettingScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class BottomNavigationBar extends StatelessWidget {
  final StatefulNavigationShell? navigationShell;
  final int index;
  final void Function(int)? onDestinationSelected;
  const BottomNavigationBar({
    super.key,
    required this.navigationShell,
    required this.index,
    this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: mainBorderSide, bottom: mainBorderSide),
        ),
        child: NavigationBar(
          onDestinationSelected: onDestinationSelected,
          selectedIndex: index,
          height: appbarLength(context),
          backgroundColor: backgroundColor,
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          indicatorColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: [
            NavigationDestination(
              icon: Icon(CupertinoIcons.burst),
              label: 'TODAY',
              selectedIcon: Icon(CupertinoIcons.burst),
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.flag),
              label: 'CALENDAR',
              selectedIcon: Icon(CupertinoIcons.flag_fill),
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.scribble),
              label: 'JOURNAL',
              selectedIcon: Icon(
                CupertinoIcons.scribble,
              ),
            ),
            NavigationDestination(
                icon: Icon(CupertinoIcons.wrench), label: 'SETTING'),
          ],
        ),
      ),
    );
  }
}

GoRouter get router => _router;
