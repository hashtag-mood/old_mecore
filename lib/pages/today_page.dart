import 'package:diary/header/more_icon_button.dart';
import 'package:diary/header/user_image.dart';
import 'package:diary/header/search_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diary/drawer/today_page_drawer.dart';

enum TodayPageMenu {
  test,
}

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final mainBorderSide = BorderSide(color: Colors.black);
  final drawerListTileFontSize = TextStyle(fontSize: 17);
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
        drawer: TodayPageDrawer(),
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
                        ),
                      ),
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
                  MoreIconButton(),
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
