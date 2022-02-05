import 'package:flutter/material.dart';

class DounleFloattingButton extends StatelessWidget {
  final Function()? ontap;
  final String textBtn;
  final Color colorBtn;
  final Color highlightColor;

  // ignore: use_key_in_widget_constructors
  const DounleFloattingButton({
    required this.colorBtn,
    required this.ontap,
    required this.highlightColor,
    required this.textBtn,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      highlightColor: highlightColor,
      borderRadius: BorderRadius.circular(20),
      onTap: ontap,
      child: Container(
          width: size.width * 0.35,
          height: size.height * 0.08,
          decoration: BoxDecoration(
              color: colorBtn, borderRadius: BorderRadius.circular(20)),
          // ignore: prefer_const_constructors
          child: Center(
              // ignore: prefer_const_constructors
              child: Text(
            textBtn,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ))),
    );
  }
}
