import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final Color color;
  final Function()? ontap;
  final String text;
  // ignore: use_key_in_widget_constructors
  const SmallButton({required this.color, required this.text, this.ontap});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInUp(
      duration: const Duration(milliseconds: 1200),
      delay: const Duration(microseconds: 1200),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: ontap,
            child: Container(
              width: double.infinity,
              height: size.height * 0.10,
              color: color,
              child: Center(
                  child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
