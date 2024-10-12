import 'package:diary/config/routes/routes.dart';
import 'package:diary/config/themes/color_picker_theme_data.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/bloc/month_year_cubit.dart';
import 'package:diary/modules/models/month_year.dart';
import 'package:diary/modules/screens/today_screen.dart';
import 'package:diary/utils/ui/cupertino_month_year_picker.dart';
import 'package:diary/utils/ui/custom_cupertino_date_picker.dart';
import 'package:diary/utils/ui/custom_year_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/appbar/record_screen_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

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
        body: BlocBuilder<MonthYearCubit, MonthYear>(
          builder: (context, state) {
            return TableCalendar(
              rowHeight: appbarLength(context),
              focusedDay: state.dateTime,
              onPageChanged: (focusedDay) {
                context.read<MonthYearCubit>().updateYear(focusedDay.year);
                context.read<MonthYearCubit>().updateMonth(focusedDay.month);
              },
              firstDay: DateTime(1899, 12),
              lastDay: DateTime(2101, 1),
              headerVisible: false,
              daysOfWeekStyle: DaysOfWeekStyle(
                dowTextFormatter: (date, locale) {
                  return DateFormat.E().format(date)[0];
                },
                weekdayStyle: TextStyle(
                  color: blackColor,
                  fontFamily: 'Public Sans',
                  fontVariations: [
                    FontVariation('wght', 300),
                  ],
                  fontSize: 17,
                  letterSpacing: 1,
                ),
                weekendStyle: TextStyle(
                  color: blackColor,
                  fontFamily: 'Public Sans',
                  fontVariations: [
                    FontVariation('wght', 300),
                  ],
                  fontSize: 17,
                  letterSpacing: 1,
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: mainBorderSide),
                ),
              ),
              calendarStyle: CalendarStyle(
                defaultTextStyle: TextStyle(
                  color: blackColor,
                  fontFamily: 'Public Sans',
                  fontVariations: [
                    FontVariation('wght', 200),
                  ],
                  fontSize: 17,
                  letterSpacing: 1,
                ),
                weekendTextStyle: TextStyle(
                  color: blackColor,
                  fontFamily: 'Public Sans',
                  fontVariations: [
                    FontVariation('wght', 200),
                  ],
                  fontSize: 17,
                  letterSpacing: 1,
                ),
                todayTextStyle: TextStyle(
                  color: backgroundColor,
                  fontFamily: 'Public Sans',
                  fontVariations: [
                    FontVariation('wght', 200),
                  ],
                  fontSize: 17,
                  letterSpacing: 1,
                ),
                outsideTextStyle: TextStyle(
                  color: textDarkSilverColor,
                  fontFamily: 'Public Sans',
                  fontVariations: [
                    FontVariation('wght', 200),
                  ],
                  fontSize: 17,
                  letterSpacing: 1,
                ),
                disabledTextStyle: TextStyle(
                  color: textDarkSilverColor,
                  fontFamily: 'Public Sans',
                  fontVariations: [
                    FontVariation('wght', 200),
                  ],
                  fontSize: 17,
                  letterSpacing: 1,
                ),
                tableBorder: TableBorder(bottom: mainBorderSide),
              ),
              daysOfWeekHeight: appbarLength(context) * 4 / 5,
            );
          },
        ),
        /*
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          height: MediaQuery.of(context).size.height -
              appbarLength(context) * 2 -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom,
          child:
              BlocBuilder<MonthYearCubit, MonthYear>(builder: (context, state) {
            return CalendarCarousel(
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              minSelectedDate: DateTime(1900),
              maxSelectedDate: DateTime(2100),
              dayMainAxisAlignment: MainAxisAlignment.center,
              targetDateTime: state.dateTime,
              headerText:
                  DateFormat('MMM yyyy').format(state.dateTime).toUpperCase(),
              onCalendarChanged: (date) {
                context.read<MonthYearCubit>().updateYear(date.year);
                context.read<MonthYearCubit>().updateMonth(date.month);
              },
              showHeaderButton: false,
              daysHaveCircularBorder: false,
              headerTextStyle: TextStyle(
                  color: blackColor,
                  fontFamily: 'Unbounded SemiBold',
                  fontSize: 22),
              headerMargin: EdgeInsets.symmetric(vertical: 10),
              headerTitleTouchable: true,
              onHeaderTitlePressed: () async {
                await CupertinoMonthYearPicker().selectDate(
                  context,
                  (month) {
                    context.read<MonthYearCubit>().updateMonth(month);
                  },
                  (year) {
                    context.read<MonthYearCubit>().updateYear(year);
                  },
                );
              },
              customDayBuilder: (isSelectable,
                  index,
                  isSelectedDay,
                  isToday,
                  isPrevMonthDay,
                  textStyle,
                  isNextMonthDay,
                  isThisMonthDay,
                  day) {
                  return Align(alignment: Alignment.center,
                    child: Text(
                      '${day.day}',
                      style: TextStyle(
                        color: (day.weekday == DateTime.saturday &&
                                  isThisMonthDay == true) ? saturdayColor : (day.weekday == DateTime.sunday &&
                            isThisMonthDay == true) ? sundayColor : blackColor,
                        fontFamily: 'Public Sans',
                        fontVariations: [
                          FontVariation('wght', 200),
                        ],
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),
                  );
              },
              weekDayFormat: WeekdayFormat.narrow,
              customWeekDayBuilder: (weekday, weekdayName) {
                return Container(
                  width: appbarLength(context),
                  height: appbarLength(context) * 2 / 3,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      weekdayName,
                      style: TextStyle(
                        color: (weekday == 6)
                            ? saturdayColor
                            : (weekday == 0)
                                ? sundayColor
                                : blackColor,
                        fontFamily: 'Public Sans',
                        fontVariations: [
                          FontVariation('wght', 500),
                        ],
                        fontSize: 18,
                      ),
                    ),
                  ),
                );
              },
              daysTextStyle: TextStyle(
                color: blackColor,
                fontFamily: 'Public Sans',
                fontVariations: [
                  FontVariation('wght', 200),
                ],
                fontSize: 18,
                letterSpacing: 1,
              ),
              weekendTextStyle: TextStyle(
                color: blackColor,
                fontFamily: 'Public Sans',
                fontVariations: [
                  FontVariation('wght', 200),
                ],
                fontSize: 18,
                letterSpacing: 1,
              ),
              nextDaysTextStyle: TextStyle(
                color: textDarkSilverColor,
                fontFamily: 'Public Sans',
                fontVariations: [
                  FontVariation('wght', 200),
                ],
                fontSize: 18,
                letterSpacing: 1,
              ),
              prevDaysTextStyle: TextStyle(
                color: textDarkSilverColor,
                fontFamily: 'Public Sans',
                fontVariations: [
                  FontVariation('wght', 200),
                ],
                fontSize: 18,
                letterSpacing: 1,
              ),
              todayTextStyle: TextStyle(
                color: backgroundColor,
                fontFamily: 'Public Sans',
                fontVariations: [
                  FontVariation('wght', 200),
                ],
                fontSize: 18,
                letterSpacing: 1,
              ),
              inactiveDaysTextStyle: TextStyle(
                color: blackColor,
                fontFamily: 'Public Sans',
                fontVariations: [
                  FontVariation('wght', 200),
                ],
                fontSize: 18,
                letterSpacing: 1,
              ),
              inactiveWeekendTextStyle: TextStyle(
                color: blackColor,
                fontFamily: 'Public Sans',
                fontVariations: [
                  FontVariation('wght', 200),
                ],
                fontSize: 18,
                letterSpacing: 1,
              ),
            );
          }),
        ),
         */
      ),
    );
  }
}
