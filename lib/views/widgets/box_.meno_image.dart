import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class BoxForMenoImage extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  final Function()? tap;
  // ignore: use_key_in_widget_constructors
  const BoxForMenoImage(
      {required this.image,
      required this.text,
      required this.color,
      required this.tap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: tap,
      child: Container(
        padding: const EdgeInsets.all(4),
        width: size.width * 0.46,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: size.height * 0.20,
              width: size.width * 0.20,
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                    padding: const EdgeInsets.all(3),
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
    );
  }
}
