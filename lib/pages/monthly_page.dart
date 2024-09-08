import 'package:diary/screens/monthly_page_appbar.dart';
import 'package:diary/screens/monthly_page_drawer.dart';
import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MonthlyPage extends StatefulWidget {
  const MonthlyPage({super.key});

  @override
  State<MonthlyPage> createState() => _MonthlyPageState();
}

class _MonthlyPageState extends State<MonthlyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          decoration: BoxDecoration(
            border: Border(
                top: mainBorderSide,
                bottom: mainBorderSide,
                right: mainBorderSide),
          ),
          child: MonthlyPageDrawer(),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            appbarLength(context),
          ),
          child: MonthlyPageAppbar(),
        ),
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: appbarLength(context) * 5,
                  decoration: BoxDecoration(
                    border: Border(bottom: mainBorderSide),
                    color: Colors.cyan,
                  ),
                ),
                Container(
                  height: appbarLength(context) * 10,
                  decoration: BoxDecoration(
                    border: Border(bottom: mainBorderSide),
                    color: Colors.pink,
                  ),
                ),
                Container(
                  height: appbarLength(context) * 20,
                  decoration: BoxDecoration(
                    border: Border(bottom: mainBorderSide),
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: appbarLength(context) * 3,
                  decoration: BoxDecoration(
                    border: Border(bottom: mainBorderSide),
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
