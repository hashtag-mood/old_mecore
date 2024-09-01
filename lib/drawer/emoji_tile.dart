import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EmojiTile extends StatefulWidget {
  final String emoji;
  final String title;

  const EmojiTile({Key? key, required this.emoji, required this.title})
      : super(key: key);

  @override
  State<EmojiTile> createState() => _EmojiTileState();
}

class _EmojiTileState extends State<EmojiTile> {
  /// BorderSide(color: Colors.black)
  final mainBorderSide = BorderSide(color: Colors.black, width: 1);

  /// TextStyle(fontSize: 17)
  final drawerListTileFontSize = TextStyle(fontSize: 17);

  bool _isEmojiVisible = false;

  @override
  Widget build(BuildContext context) {
    /// MediaQuery.of(context).size.width / 7
    final double mainHeight = MediaQuery.of(context).size.width / 7;
    return Container(
      height: mainHeight,
      alignment: Alignment.centerLeft,
      child: ListTile(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              _isEmojiVisible = !_isEmojiVisible;
            });
          },
          child: _isEmojiVisible
              ? Text(
                  widget.emoji,
                  style: drawerListTileFontSize,
                )
              : ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.white, BlendMode.saturation),
                  child: Text(
                    widget.emoji,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
        ),
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            widget.title,
            style: drawerListTileFontSize,
          ),
        ),
      ),
    );
  }
}

class EmojiTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        EmojiTile(emoji: '💕', title: 'FAMILY CALENDAR'),
        EmojiTile(emoji: '💥', title: 'URGENT CALENDAR'),
        EmojiTile(emoji: '🦥', title: 'NOT URGENT CALENDAR'),
      ],
    );
  }
}
