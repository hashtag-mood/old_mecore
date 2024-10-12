import 'package:diary/modules/models/month_year.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MonthYearCubit extends Cubit<MonthYear>{
  MonthYearCubit():super(MonthYear(dateTime: DateTime.now()));
  
  void updateMonth(int selectedMonth) {
    DateTime updateDate = DateTime(state.dateTime.year, selectedMonth);
    emit(MonthYear(dateTime: updateDate));
  }

  void updateYear(int selectedYear) {
    DateTime updateDate = DateTime(selectedYear, state.dateTime.month);
    emit(MonthYear(dateTime: updateDate));
  }
}