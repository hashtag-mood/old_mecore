import 'package:diary/widgets/monthly_screen_appbar.dart';
import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/monthly_screen_drawer.dart';
import 'package:flutter/material.dart';

class MonthlyScreen extends StatefulWidget {
  const MonthlyScreen({super.key});

  @override
  State<MonthlyScreen> createState() => _MonthlyScreenState();
}

class _MonthlyScreenState extends State<MonthlyScreen> {
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
          child: MonthlyScreenDrawer(),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            appbarLength(context),
          ),
          child: MonthlyScreenAppbar(),
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
