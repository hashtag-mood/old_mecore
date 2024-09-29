import 'package:diary/config/themes/color_picker_theme_data.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/models/half_hour_color_cells.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HalfHourColorCellsCubit extends Cubit<HalfHourColorCells> {
  HalfHourColorCellsCubit(super.initialState);

  void initialState() {
    emit(
      HalfHourColorCells(color: backgroundColor, isSelected: false),
    );
  }
}
