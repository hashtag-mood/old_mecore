import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreIconButton extends StatefulWidget {
  const MoreIconButton({super.key});

  @override
  State<MoreIconButton> createState() => _MoreIconButtonState();
}

class _MoreIconButtonState extends State<MoreIconButton> {
  final mainBorderSide = BorderSide(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    final double mainHeight = MediaQuery.of(context).size.width / 7;
    return Expanded(
      flex: 1,
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // TODO PopupMenuButton 구현
              PopupMenuButton(
                icon: Icon(Icons.more_vert_sharp),
                iconSize: mainHeight * 0.6,
                itemBuilder: (BuildContext context) => [],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: mainBorderSide,
            bottom: mainBorderSide,
          ),
        ),
      ),
    );
  }
}
