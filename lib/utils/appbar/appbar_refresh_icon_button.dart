import 'package:diary/utils/custom_date_picker.dart';
import 'package:diary/utils/utils.dart';
import 'package:flutter/material.dart';

class AppbarRefreshIconButton extends StatelessWidget {
  final VoidCallback onPressedCallback;
  const AppbarRefreshIconButton({super.key, required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: appbarLength(context),
        child: IconButton(
          onPressed: onPressedCallback,
          icon: Icon(Icons.refresh_sharp),
          iconSize: appbarLength(context) * 0.6,
        ),
      ),
    );
  }
}
