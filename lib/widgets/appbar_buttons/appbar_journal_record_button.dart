import 'package:mecore/config/routes/routes.dart';
import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/modules/screens/today_record_screen.dart';
import 'package:mecore/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppbarJournalRecordButton extends StatelessWidget {
  const AppbarJournalRecordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: appbarLength(context),
        decoration: BoxDecoration(
          border: Border(right: mainBorderSide),
        ),
        child: Builder(
          builder: (context) {
            return IconButton(
              highlightColor: Colors.transparent,
              onPressed: () {
                context.go('/journal/record');
              },
              icon: Image.asset(
                'assets/icons/medical-star_48.png',
                width: appbarLength(context) * 0.45,
              ),
            );
          },
        ),
      ),
    );
  }
}
