import 'package:diary/config/routes/routes.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/bloc/half_hour_color_cells_cubit.dart';
import 'package:diary/modules/bloc/month_year_cubit.dart';
import 'package:diary/modules/bloc/weather_icon_cubit.dart';
import 'package:diary/modules/models/half_hour_color_cells.dart';
import 'package:diary/modules/models/weather_icon.dart';
import 'package:diary/modules/screens/today_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const Diary());
}

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MonthYearCubit(),),
        BlocProvider(
          create: (context) => WeatherIconCubit(
            WeatherIcon(
              unselected: Text(''),
              selected: Text(''),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => HalfHourColorCellsCubit(
            HalfHourColorCells(color: backgroundColor, isSelected: false),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Interop Regular',
          cupertinoOverrideTheme: CupertinoThemeData(
            textTheme: CupertinoTextThemeData(
              textStyle: TextStyle(
                fontFamily: 'Interop Regular',
              ),
            ),
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}
