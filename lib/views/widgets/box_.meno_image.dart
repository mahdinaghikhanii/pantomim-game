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
    return SizedBox(
      width: size.width * 0.46,
      height: 140,
      child: InkWell(
        onTap: tap,
        child: Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: color,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 8),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 2),
                  child: Image.asset(
                    image,
                    height: size.height * 0.14,
                    width: size.width * 0.25,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
