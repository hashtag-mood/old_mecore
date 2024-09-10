import 'package:diary/widgets/today_screen_appbar.dart';
import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/today_screen_drawer.dart';
import 'package:flutter/material.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
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
          child: TodayScreenDrawer(),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            appbarLength(context),
          ),
          child: TodayScreenAppbar(),
        ),
        body: SingleChildScrollView(
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
    );
  }
}
