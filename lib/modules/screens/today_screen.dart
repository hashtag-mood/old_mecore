import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/bloc/half_hour_color_cells_cubit.dart';
import 'package:diary/modules/bloc/weather_icon_cubit.dart';
import 'package:diary/modules/models/half_hour_color_cells.dart';
import 'package:diary/modules/models/weather_icon.dart';
import 'package:diary/widgets/today_screen_appbar.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/today_screen_body.dart';
import 'package:diary/widgets/today_screen_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodayScreen extends StatefulWidget {
  final String? recordPath;
  final String? editPath;
  final String? searchPath;

  const TodayScreen({super.key, this.recordPath, this.editPath, this.searchPath});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            appbarLength(context),
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: TodayScreenAppbar(),
          ),
        ),
        body: MultiBlocProvider(
          providers: [
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
            )
          ],
          child: TodayScreenBody(),
        ),
      ),
    );
  }
}
