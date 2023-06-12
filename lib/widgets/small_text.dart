import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double hight;
  SmallText(
      {super.key,
      this.color = const Color(0xFFCCC7C5),
      required this.text,
      this.hight = 1.2,
      this.size = 12});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        height: hight,
      ),
    );
  }
}
