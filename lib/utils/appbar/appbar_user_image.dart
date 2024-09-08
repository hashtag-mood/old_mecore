import 'package:diary/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/material.dart';

class AppbarUserImage extends StatelessWidget {
  const AppbarUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: appbarLength(context),
        decoration: BoxDecoration(
          border: Border(
            right: mainBorderSide,
          ),
        ),
        child: const Image(
          image: AssetImage('assets/img/user_image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
