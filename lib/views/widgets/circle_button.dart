import 'package:flutter/material.dart';

class CricleButton extends StatelessWidget {
  final Function()? onTap;
  final IconData iconData;
  final Color iconColor;
  final Color backgroundColor;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  const CricleButton(
      {required this.onTap,
      required this.iconData,
      required this.iconColor,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.white10,
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: backgroundColor,
            spreadRadius: 00.0,
          )
        ], color: Colors.transparent, shape: BoxShape.circle),
        child: Icon(
          iconData,
          size: 50,
          color: iconColor,
        ),
      ),
    );
  }
}
