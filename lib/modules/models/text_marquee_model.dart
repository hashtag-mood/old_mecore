import 'package:flutter/material.dart';
import 'package:text_marquee/text_marquee.dart';

class TextMarqueeModel {
  TextEditingController textEditingController;
  String placeholderText;
  String controllerText;
  String completeText;
  TextMarqueeModel({required this.textEditingController, required this.placeholderText, required this.controllerText, required this.completeText});
}
