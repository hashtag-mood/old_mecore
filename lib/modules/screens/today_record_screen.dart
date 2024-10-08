import 'package:diary/config/routes/routes.dart';
import 'package:diary/config/themes/color_picker_theme_data.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/screens/today_screen.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/appbar/record_screen_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class TodayRecordScreen extends StatefulWidget {
  const TodayRecordScreen({super.key});

  @override
  State<TodayRecordScreen> createState() => _TodayRecordScreenState();
}

class _TodayRecordScreenState extends State<TodayRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            appbarLength(context),
          ),
          child: RecordScreenAppBar(),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          height: MediaQuery.of(context).size.height -
              appbarLength(context) * 2 -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom,
          child: PagedVerticalCalendar(
            minDate: DateTime(1900),
            maxDate: DateTime(2100),
            startWeekWithSunday: true, // TODO setting screen option
            monthBuilder: (context, month, year) {
              return Column(
                children: [
                  Container(
                    width: appbarLength(context) * 3,
                    height: appbarLength(context),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        DateFormat('MMMM')
                            .format(DateTime(year, month))
                            .toUpperCase(),
                        style: TextStyle(
                          color: blackColor,
                          fontFamily: 'Interop SemiBold',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
