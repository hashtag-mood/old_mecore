import 'package:mecore/config/themes/theme_data.dart';
import 'package:flutter/material.dart';

class DrawerUserCalendarsSilver extends StatefulWidget {
  final String emoji;
  final String title;

  const DrawerUserCalendarsSilver(
      {super.key, required this.emoji, required this.title});

  @override
  State<DrawerUserCalendarsSilver> createState() =>
      _DrawerUserCalendarsSilverState();
}

class _DrawerUserCalendarsSilverState extends State<DrawerUserCalendarsSilver> {
  bool _isEmojiChecked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isEmojiChecked = !_isEmojiChecked;
        });
      },
      child: ListTile(
        leading: _isEmojiChecked
            ? SizedBox(
                width: 24,
                child: Text(
                  widget.emoji,
                  style: drawerListTileFontStyle(context),
                  textAlign: TextAlign.center,
                ),
              )
            : ColorFiltered(
                colorFilter: ColorFilter.mode(
                    drawerUserCalendarEmojiColor, BlendMode.srcIn),
                child: SizedBox(
                  width: 24,
                  child: Text(
                    widget.emoji,
                    style: drawerListTileFontStyle(context),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            widget.title,
            style: drawerListTileFontStyle(context),
          ),
        ),
      ),
    );
  }
}
