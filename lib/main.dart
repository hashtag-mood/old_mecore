import 'package:diary/config/routes/routes.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/screens/today_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Diary());
}

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
    );
  }
}
