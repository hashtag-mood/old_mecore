import 'package:mecore/config/routes/routes.dart';
import 'package:mecore/config/themes/theme_data.dart';
import 'package:mecore/modules/screens/search_screen.dart';
import 'package:mecore/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppbarSearchIconButton extends StatelessWidget {
  const AppbarSearchIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: appbarLength(context),
        decoration: BoxDecoration(
          border: Border(right: mainBorderSide),
        ),
        child: IconButton(
          highlightColor: Colors.transparent,
          alignment: Alignment.center,
          onPressed: () {
            if (GoRouter.of(context).routerDelegate.currentConfiguration.fullPath == '/today') {
              context.go('/today/search');
            } else if (GoRouter.of(context).routerDelegate.currentConfiguration.fullPath == '/calendar') {
              context.go('/calendar/search');
            } else if (GoRouter.of(context).routerDelegate.currentConfiguration.fullPath == '/journal') {
              context.go('/journal/search');
            }
          },
          icon: Image.asset(
            'assets/icons/search_48.png',
            width: appbarLength(context) * 0.45,
          ),
        ),
      ),
    );
  }
}
