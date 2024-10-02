import 'package:diary/config/routes/routes.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/screens/today_screen.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/record_screen_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TodayRecordScreen extends StatefulWidget {
  const TodayRecordScreen({super.key});

  @override
  State<TodayRecordScreen> createState() => _TodayRecordScreenState();
}

class _TodayRecordScreenState extends State<TodayRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            appbarLength(context),
          ),
          child: RecordScreenAppBar(),
        ),
        body: Column(
          children: [
            Container(
              width: screenWidth(context),
              height: appbarLength(context),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border(
                  bottom: mainBorderSide,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: appbarLength(context),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.arrow_left,
                        color: blackColor,
                      ),
                      iconSize: appbarLength(context) * 0.55,
                    ),
                  ),
                  SizedBox(
                    width: appbarLength(context) * 5,
                    height: appbarLength(context),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        DateTime.now().year.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Public Sans',
                          fontVariations: [
                            FontVariation('wght', 300),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: appbarLength(context),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.arrow_right,
                        color: blackColor,
                      ),
                      iconSize: appbarLength(context) * 0.55,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
