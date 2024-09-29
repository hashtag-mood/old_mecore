import 'package:diary/config/routes/routes.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/modules/screens/today_screen.dart';
import 'package:diary/utils/utils.dart';
import 'package:diary/widgets/record_screen_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

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
              height: appbarLength(context) / 2,
              padding: EdgeInsets.fromLTRB(5, 2, 2, 2),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border(
                  bottom: mainBorderSide,
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'SEPTEMBER',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: appbarLength(context),
                  height: appbarLength(context),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    border: Border(
                      bottom: mainBorderSide,
                      right: mainBorderSide,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '22',
                      style: TextStyle(
                        fontFamily: 'Public Sans',
                        fontVariations: [
                          FontVariation('wght', 300),
                        ],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth(context) - appbarLength(context),
                  height: appbarLength(context),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    border: Border(bottom: mainBorderSide),
                  ),
                  padding: EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '가장 첫 번째로 작성된 텍스트 필드 적기',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: appbarLength(context),
                  height: appbarLength(context),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    border: Border(
                      bottom: mainBorderSide,
                      right: mainBorderSide,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '20',
                      style: TextStyle(
                        fontFamily: 'Public Sans',
                        fontVariations: [
                          FontVariation('wght', 300),
                        ],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth(context) - appbarLength(context),
                  height: appbarLength(context),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    border: Border(bottom: mainBorderSide),
                  ),
                  padding: EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '큰일났다',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
