import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/appbar/journal_screen_appbar.dart';
import 'package:diary/widgets/journal_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JournalScreen extends StatelessWidget {
  final String? recordPath;
  final String? searchPath;

  const JournalScreen({super.key, this.recordPath, this.searchPath});

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
            flexibleSpace: JournalScreenAppbar(),
          ),
        ),
        body: JournalScreenBody(),
      ),
    );
  }
}
