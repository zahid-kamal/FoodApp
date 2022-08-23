import 'package:ecommers/utils/dimensions.dart';
import 'package:flutter/material.dart';

class Appicon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;
  Appicon(
      {Key? key,
      required this.icon,
      this.backgroundColor = Colors.white70,
      this.iconColor = const Color(0xFF756d54),
      this.size = 40, this.iconSize=16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
