import 'package:mecore/utils/utils.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Text(appbarLength(context).toString()),
        ),
      ),
    );
  }
}
