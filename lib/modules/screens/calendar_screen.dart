import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/widgets/calendar_screen_appbar.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/calendar_screen_drawer.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  final String? tasksPath;
  const CalendarScreen({super.key, this.tasksPath});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: Container(
        //   decoration: BoxDecoration(
        //     border: Border(
        //         top: mainBorderSide,
        //         bottom: mainBorderSide,
        //         right: mainBorderSide),
        //   ),
        //   child: MonthlyScreenDrawer(),
        // ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            appbarLength(context),
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: CalendarScreenAppbar(),
          ),
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
