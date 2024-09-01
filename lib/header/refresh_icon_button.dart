import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshIconButton extends StatefulWidget {
  const RefreshIconButton({super.key});

  @override
  State<RefreshIconButton> createState() => _RefreshIconButtonState();
}

class _RefreshIconButtonState extends State<RefreshIconButton> {
  final mainBorderSide = BorderSide(color: Colors.black);
  DateTime _selectedDate = DateTime.now();

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
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedDate = DateTime.now();
                  });
                },
                icon: Icon(
                  Icons.refresh_sharp,
                ),
                iconSize: mainHeight * 0.6,
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
