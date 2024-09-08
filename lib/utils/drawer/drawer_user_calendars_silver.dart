import 'package:diary/themes/theme_data.dart';
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
    return ListTile(
      leading: GestureDetector(
        onTap: () {
          setState(() {
            _isEmojiChecked = !_isEmojiChecked;
          });
        },
        child: _isEmojiChecked
            ? Text(
                widget.emoji,
                style: drawerListTileFontStyle,
              )
            : ColorFiltered(
                colorFilter: ColorFilter.mode(
                    drawerUserCalendarEmojiColor, BlendMode.srcIn),
                child: Text(
                  widget.emoji,
                  style: drawerListTileFontStyle,
                ),
              ),
      ),
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          widget.title,
          style: drawerListTileFontStyle,
        ),
      ),
    );
  }
}
