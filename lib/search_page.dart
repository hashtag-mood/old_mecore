import 'package:diary/TodayPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => TodayPage(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),
        ),
        body: Center(
          child: Text(
            '검색창',
            style: TextStyle(fontFamily: 'Interop Regular', fontSize: 30),
          ),
        ),
      ),
    );
  }
}
