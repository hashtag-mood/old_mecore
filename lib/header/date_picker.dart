import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderDatePicker extends StatefulWidget {
  const HeaderDatePicker({super.key});

  @override
  State<HeaderDatePicker> createState() => _HeaderDatePickerState();
}

class _HeaderDatePickerState extends State<HeaderDatePicker> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final mainBorderSide = BorderSide(color: Colors.black);
  final drawerListTileFontSize = TextStyle(fontSize: 17);
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final double mainHeight = MediaQuery.of(context).size.width / 7;
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );

      if (picked != null && picked != _selectedDate) {
        setState(() {
          _selectedDate = picked;
        });
      }
    }

    String formatDate(DateTime date) {
      String year = date.year.toString();
      String month = date.month.toString().padLeft(2, '0');
      String day = date.day.toString().padLeft(2, '0');
      return '$year/$month/$day';
    }

    return Expanded(
      flex: 3,
      child: Container(
        height: mainHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: mainBorderSide,
            bottom: mainBorderSide,
            right: mainBorderSide,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                ),
                onPressed: () => _selectDate(context),
                child: Text(
                  '${formatDate(_selectedDate)}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
