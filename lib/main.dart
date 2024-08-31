import 'package:flutter/material.dart';
import 'TodayPage.dart';

void main() {
  runApp(const Diary());
}

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Interop Regular'),
      home: const TodayPage(),
    );
  }
}
