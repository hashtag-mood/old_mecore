import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/utils/utils.dart';
import 'package:flutter/material.dart';

class DrawerDivider extends StatelessWidget {
  final Border border;
  const DrawerDivider({super.key, required this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appbarLength(context) * 0.25,
      decoration: BoxDecoration(
        border: border,
        color: drawerDividerColor,
      ),
    );
  }
}
