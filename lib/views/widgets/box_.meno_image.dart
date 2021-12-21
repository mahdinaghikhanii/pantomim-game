import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class BoxForMenoImage extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  // ignore: use_key_in_widget_constructors
  const BoxForMenoImage(
      {required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.fromLTRB(10, 8, 2, 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(5),
          width: 170,
          height: 140,
          color: color,
          child: Row(
            children: [
              Image.asset(
                image,
                width: 70,
              ),
              const SizedBox(
                width: 5,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                      padding: EdgeInsets.all(3),
                      width: 80,
                      height: 30,
                      color: kwhite,
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).primaryTextTheme.subtitle1,
                      )))
            ],
          ),
        ),
      ),
    ));
  }
}
