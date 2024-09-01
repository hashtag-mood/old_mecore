import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserImage extends StatefulWidget {
  const UserImage({super.key});

  @override
  State<UserImage> createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  final mainBorderSide = BorderSide(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // height: double.infinity,
        child: Image(
          image: AssetImage('assets/img/user_image.jpg'),
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
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
