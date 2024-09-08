import 'package:flutter/material.dart';

CustomDatePicker customDatePicker = CustomDatePicker();

class CustomDatePicker {
  DateTime _selectedDate = DateTime.now();
  late DateTime picked;

  DateTime get selectedDate => _selectedDate;

  Future<void> selectDate(
      BuildContext context, VoidCallback selectDateCallback) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      _selectedDate = picked;
      selectDateCallback();
    }
  }

  void refreshDate() {
    _selectedDate = DateTime.now();
  }
}
