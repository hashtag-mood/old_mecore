import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../MonthlyPage.dart';
import '../TodayPage.dart';

class CommonDrawer extends StatefulWidget {
  const CommonDrawer({super.key});

  @override
  State<CommonDrawer> createState() => _CommonDrawerState();
}

class _CommonDrawerState extends State<CommonDrawer> {
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
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      TodayPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return child;
                              },
                            ));
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
