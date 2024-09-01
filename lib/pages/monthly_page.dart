import 'package:diary/header/search_icon_button.dart';
import 'package:diary/header/user_image.dart';
import 'package:diary/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:diary/pages/today_page.dart';
import 'package:diary/drawer/common_drawer.dart';

class MonthlyPage extends StatefulWidget {
  const MonthlyPage({super.key});

  @override
  State<MonthlyPage> createState() => _MonthlyPageState();
}

class _MonthlyPageState extends State<MonthlyPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final mainBorderSide = BorderSide(color: Colors.black);
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final double mainHeight = MediaQuery.of(context).size.width / 7;
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );

      if (picked != null && picked != _selectedDate) {
        setState(() {
          _selectedDate = picked;
        });
      }
    }

    String formatDate(DateTime date) {
      String year = date.year.toString();
      String month = date.month.toString().padLeft(2, '0');
      String day = date.day.toString().padLeft(2, '0');
      return '$year/$month/$day';
    }

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: MonthlyPageDrawer(),
        body: Column(
          children: [
            Container(
              height: mainHeight,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: mainHeight,
                      child: IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(Icons.menu_sharp),
                        iconSize: mainHeight * 0.6,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: mainBorderSide,
                            bottom: mainBorderSide,
                            right: mainBorderSide,
                          )),
                    ),
                  ),
                  UserImage(),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: mainHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: mainBorderSide,
                          bottom: mainBorderSide,
                          right: mainBorderSide,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.transparent),
                                overlayColor:
                                    WidgetStatePropertyAll(Colors.transparent),
                              ),
                              onPressed: () => _selectDate(context),
                              child: Text(
                                '${formatDate(_selectedDate)}',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SearchIconButton(),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _selectedDate = DateTime.now();
                                });
                              },
                              icon: Icon(
                                Icons.refresh_sharp,
                              ),
                              iconSize: mainHeight * 0.6,
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: mainBorderSide,
                          bottom: mainBorderSide,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MonthlyPageDrawer extends CommonDrawer {
  const MonthlyPageDrawer({super.key});

  @override
  State<MonthlyPageDrawer> createState() => _MonthlyPageDrawerState();
}

class _MonthlyPageDrawerState extends State<MonthlyPageDrawer> {
  /// BorderSide(color: Colors.black)
  final mainBorderSide = BorderSide(color: Colors.black, width: 1);

  /// TextStyle(fontSize: 17)
  final drawerListTileFontSize = TextStyle(fontSize: 17);

  @override
  Widget build(BuildContext context) {
    /// MediaQuery.of(context).size.width / 7
    final double mainHeight = MediaQuery.of(context).size.width / 7;
    return Container(
      decoration: BoxDecoration(
          border: Border(
              right: mainBorderSide,
              top: mainBorderSide,
              bottom: mainBorderSide)),
      child: Drawer(
        width: mainHeight * 5,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('assets/img/logo.png'),
                width: mainHeight * 3,
              ),
              height: mainHeight - 1,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border(bottom: mainBorderSide),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: mainHeight * 0.25,
                    decoration: BoxDecoration(
                      border: Border(bottom: mainBorderSide),
                      color: Colors.pink,
                    ),
                  ),
                  Container(
                    height: mainHeight,
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      leading: Text(
                        '💌',
                        style: drawerListTileFontSize,
                      ),
                      title: Text(
                        'MONTHLY',
                        style: drawerListTileFontSize,
                      ),
                      onTap: () async {
                        await Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => MonthlyPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: mainHeight,
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      leading: Text(
                        '📍',
                        style: drawerListTileFontSize,
                      ),
                      title: Text(
                        'TO-DO',
                        style: drawerListTileFontSize,
                      ),
                    ),
                  ),
                  Container(
                    height: mainHeight,
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      leading: Text(
                        '🧸',
                        style: drawerListTileFontSize,
                      ),
                      title: Text(
                        'TODAY',
                        style: drawerListTileFontSize,
                      ),
                      onTap: () async {
                        await Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => TodayPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: mainHeight,
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      leading: Text(
                        '🖋',
                        style: drawerListTileFontSize,
                      ),
                      title: Text(
                        'JOURNAL',
                        style: drawerListTileFontSize,
                      ),
                    ),
                  ),
                  Container(
                    height: mainHeight,
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      leading: Text(
                        '📓',
                        style: drawerListTileFontSize,
                      ),
                      title: Text(
                        'RECORD',
                        style: drawerListTileFontSize,
                      ),
                    ),
                  ),
                  Container(
                    height: mainHeight * 0.25,
                    decoration: BoxDecoration(
                      border:
                          Border(top: mainBorderSide, bottom: mainBorderSide),
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
