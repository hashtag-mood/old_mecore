import 'dart:convert';

import 'package:animated_emoji/animated_emoji.dart';
import 'package:diary/config/routes/routes.dart';
import 'package:diary/config/themes/color_picker_theme_data.dart';
import 'package:diary/config/themes/theme_data.dart';
import 'package:diary/utils/utils.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomEmojiContainer extends StatefulWidget {
  const CustomEmojiContainer({super.key});

  @override
  State<CustomEmojiContainer> createState() => _CustomEmojiContainerState();
}

class _CustomEmojiContainerState extends State<CustomEmojiContainer> {
  String selectedEmoji = '';
  List<String> emojis = [];

  Future<List<String>> loadEmojis() async {
    final String response =
        await rootBundle.loadString('assets/json/data-ordered-emoji.json');
    final List<dynamic> data = json.decode(response);
    return data.map((emoji) => emoji as String).toList();
  }

  @override
  void initState() {
    super.initState();
    loadEmojis().then((loadedEmojis) {
      setState(() {
        emojis = loadedEmojis;
      });
    });
  }

  void _showEmojiKeyboard(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: Border.all(width: 1, color: blackColor),
          backgroundColor: backgroundColor,
          actionsPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.all(5),
          title: null,
          content: Container(
            width: appbarLength(context) * 6 - 19,
            height: appbarLength(context) * 6.3,
            padding: EdgeInsets.zero,
            child: EmojiPicker(
              onEmojiSelected: (category, emoji) {
                setState(() {
                  selectedEmoji = emoji.emoji;
                });
              },
              config: Config(
                emojiViewConfig: EmojiViewConfig(
                  backgroundColor: backgroundColor,
                  emojiSizeMax: 22,
                ),
                categoryViewConfig: CategoryViewConfig(
                  dividerColor: Colors.transparent,
                  backgroundColor: backgroundColor,
                  iconColor: textSilverColor,
                  iconColorSelected: blackColor,
                  indicatorColor: Colors.transparent,
                  categoryIcons: CategoryIcons(
                    recentIcon: CupertinoIcons.scope,
                    animalIcon: CupertinoIcons.tortoise_fill,
                    flagIcon: CupertinoIcons.flag_fill,
                    activityIcon: CupertinoIcons.hare_fill,
                    objectIcon: CupertinoIcons.gear_solid,
                  ),
                ),
                bottomActionBarConfig: BottomActionBarConfig(enabled: false),
              ),

              // child: GridView.builder(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 6, childAspectRatio: 1),
              //   itemCount: emojis.length,
              //   itemBuilder: (context, index) {
              //     return GestureDetector(
              //       onTap: () {
              //         setState(() {
              //           selectedEmoji = emojis[index];
              //         });
              //         context.pop();
              //       },
              //       child: Align(
              //         alignment: Alignment.center,
              //         child: Text(emojis[index], style: TextStyle(fontSize: 25),),
              //       ),
              //     );
              //   },
              // ),
            ),
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: mainBorderSide,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      border: Border(right: mainBorderSide),
                    ),
                    width: (appbarLength(context) * 6 - 19) / 2,
                    height: appbarLength(context) * 4 / 5,
                    child: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          selectedEmoji = '';
                        });
                      },
                      child: Text(
                        'CANCEL',
                        style: TextStyle(fontSize: 16, color: blackColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (appbarLength(context) * 6 - 19) / 2,
                    height: appbarLength(context) * 4 / 5,
                    child: CupertinoButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        'SELECT',
                        style: TextStyle(fontSize: 16, color: blackColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: appbarLength(context) * 5 / 7 * 2 - 1.3,
      height: musicContainerHeight(context),
      child: TextButton(
        onPressed: () => _showEmojiKeyboard(context),
        child: (selectedEmoji.isEmpty)
            ? AnimatedEmoji(
                AnimatedEmojis.peace,
                size: 35,
              )
            : Text(
                selectedEmoji,
                style: TextStyle(fontSize: 25),
              ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
    );
  }
}
