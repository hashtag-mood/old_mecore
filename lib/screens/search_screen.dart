import 'package:diary/screens/today_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                    builder: (context) => TodayScreen(),
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
