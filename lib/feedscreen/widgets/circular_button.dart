import 'package:flutter/material.dart';

class CirculerButton extends StatelessWidget {
  const CirculerButton(
      {super.key,
      required this.height,
      required this.width,
      required this.icon,
      required this.color,
      required this.onClick});

  final double height, width;
  final Icon icon;
  final Color color;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(onPressed: onClick, icon: icon, enableFeedback: true),
    );
  }
}
