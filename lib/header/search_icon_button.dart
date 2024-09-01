import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:diary/search_page.dart';

class SearchIconButton extends StatefulWidget {
  const SearchIconButton({super.key});

  @override
  State<SearchIconButton> createState() => _SearchIconButtonState();
}

class _SearchIconButtonState extends State<SearchIconButton> {
  final mainBorderSide = BorderSide(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    final double mainHeight = MediaQuery.of(context).size.width / 7;
    return Expanded(
      flex: 1,
      child: Container(
        height: mainHeight,
        child: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => SearchPage(),
                ));
          },
          icon: Icon(Icons.search_sharp),
          iconSize: mainHeight * 0.6,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: mainBorderSide,
            bottom: mainBorderSide,
            right: mainBorderSide,
          ),
        ),
      ),
    );
  }
}
