import 'package:diary/themes/theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String leading;
  final String title;
  final VoidCallback onTapCallback;
  const DrawerListTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leading,
        style: drawerListTileFontStyle,
      ),
      title: Text(
        title,
        style: drawerListTileFontStyle,
      ),
      onTap: onTapCallback,
    );
  }
}
