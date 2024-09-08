import 'package:diary/utils/utils.dart';
import 'package:flutter/material.dart';

class AppbarPopupMenuButton extends StatelessWidget {
  const AppbarPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: appbarLength(context),
        child: PopupMenuButton(
          icon: Icon(Icons.more_vert_sharp),
          iconSize: appbarLength(context) * 0.6,
          itemBuilder: (BuildContext context) => [],
        ),
      ),
    );
  }
}
