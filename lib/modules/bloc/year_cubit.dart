import 'package:flutter_bloc/flutter_bloc.dart';

class YearCubit extends Cubit<int> {
  YearCubit() : super(DateTime.now().year);

  void updateYear(int selectedYear) {
    emit(selectedYear);
  }
}