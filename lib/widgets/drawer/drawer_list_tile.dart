import 'package:mecore/config/themes/theme_data.dart';
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
      leading: SizedBox(
        width: drawerListTileLeadingWidth(context),
        child: Text(
          leading,
          style: drawerListTileFontStyle(context),
          textAlign: TextAlign.center,
        ),
      ),
      title: Text(
        title,
        style: drawerListTileFontStyle(context),
      ),
      onTap: onTapCallback,
    );
  }
}
