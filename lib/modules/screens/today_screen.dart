import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/modules/bloc/half_hour_color_cells_cubit.dart';
import 'package:mecore/modules/bloc/weather_icon_cubit.dart';
import 'package:mecore/modules/models/half_hour_color_cells.dart';
import 'package:mecore/modules/models/weather_icon.dart';
import 'package:mecore/widgets/appbar/today_screen_appbar.dart';
import 'package:mecore/utils/utils.dart';
import 'package:mecore/widgets/body/new_today_screen_body.dart';
import 'package:mecore/widgets/today_screen_body.dart';
import 'package:mecore/widgets/drawer/today_screen_drawer.dart';
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
        body: NewTodayScreenBody(), // TodayScreenBody(),
      ),
    );
  }
}
