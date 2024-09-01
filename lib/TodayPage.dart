import 'dart:math';
import 'dart:io';

import 'package:flutter/material.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
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
        drawer: Container(
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
                            style: TextStyle(fontSize: 17),
                          ),
                          title: Text(
                            'MONTHLY',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        height: mainHeight,
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Text(
                            '📍',
                            style: TextStyle(fontSize: 17),
                          ),
                          title: Text(
                            'TO-DO',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        height: mainHeight,
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Text(
                            '🧸',
                            style: TextStyle(fontSize: 17),
                          ),
                          title: Text(
                            'TODAY',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        height: mainHeight,
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Text(
                            '🖋',
                            style: TextStyle(fontSize: 17),
                          ),
                          title: Text(
                            'JOURNAL',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        height: mainHeight,
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Text(
                            '📓',
                            style: TextStyle(fontSize: 17),
                          ),
                          title: Text(
                            'RECORD',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        height: mainHeight * 0.25,
                        decoration: BoxDecoration(
                          border: Border(
                              top: mainBorderSide, bottom: mainBorderSide),
                          color: Colors.pink,
                        ),
                      ),
                      Container(
                        height: mainHeight,
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Text(
                            '🥰',
                            style: TextStyle(fontSize: 17),
                          ),
                          title: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              'FAMILY CALENDAR',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: mainHeight,
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Text(
                            '💥',
                            style: TextStyle(fontSize: 17),
                          ),
                          title: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              'URGENT CALENDAR',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: mainHeight,
                        alignment: Alignment.centerLeft,
                        child: ListTile(
                          leading: Text(
                            '🦥',
                            style: TextStyle(fontSize: 17),
                          ),
                          title: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              'NOT URGENT CALENDAR',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
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
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // height: double.infinity,
                      child: Image(
                        image: AssetImage('assets/img/user_image.jpg'),
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          top: mainBorderSide,
                          bottom: mainBorderSide,
                          right: mainBorderSide,
                        ),
                      ),
                    ),
                  ),
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
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top: mainBorderSide,
                              bottom: mainBorderSide,
                              right: mainBorderSide,
                            ))),
                  ),
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: mainHeight * 5,
                      decoration: BoxDecoration(
                        border: Border(bottom: mainBorderSide),
                        color: Colors.cyan,
                      ),
                    ),
                    Container(
                      height: mainHeight * 10,
                      decoration: BoxDecoration(
                        border: Border(bottom: mainBorderSide),
                        color: Colors.pink,
                      ),
                    ),
                    Container(
                      height: mainHeight * 20,
                      decoration: BoxDecoration(
                        border: Border(bottom: mainBorderSide),
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      height: mainHeight * 3,
                      decoration: BoxDecoration(
                        border: Border(bottom: mainBorderSide),
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
