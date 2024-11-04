import 'package:mecore/config/themes/color_picker_theme_data.dart';
import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/modules/models/half_hour_color_cells.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HalfHourColorCellsCubit extends Cubit<HalfHourColorCells> {
  HalfHourColorCellsCubit(super.initialState);

  void initialState() {
    emit(
      HalfHourColorCells(selectedColor: backgroundColor, isSelected: false),
    );
  }
}
