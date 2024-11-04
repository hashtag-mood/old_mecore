import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/modules/screens/today_record_screen.dart';
import 'package:mecore/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarUserImage extends StatelessWidget {
  const AppbarUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            right: mainBorderSide,
          ),
        ),
        child: Image.asset(
          'assets/img/user_image.jpg',
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
