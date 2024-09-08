import 'package:diary/themes/theme_data.dart';
import 'package:flutter/material.dart';

class DrawerUserCalendarsMono extends StatefulWidget {
  final String emoji;
  final String title;
  const DrawerUserCalendarsMono(
      {super.key, required this.emoji, required this.title});

  @override
  State<DrawerUserCalendarsMono> createState() =>
      _DrawerUserCalendarsMonoState();
}

class _DrawerUserCalendarsMonoState extends State<DrawerUserCalendarsMono> {
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
                colorFilter:
                    ColorFilter.mode(backgroundColor, BlendMode.saturation),
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
