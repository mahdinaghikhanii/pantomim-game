import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class ChoiceTopic extends StatelessWidget {
  final Function() onTap;
  final String title;
  final String image;

  const ChoiceTopic({
    Key? key,
    required this.onTap,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          color: Theme.of(context).splashColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: kpink.withOpacity(0.8), blurRadius: 20)
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    image,
                    width: 70,
                    height: 65,
                    fit: BoxFit.fill,
                  ),
                )),
            const SizedBox(height: 8),
          ]),
          Text(
            title,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          )
        ]),
      ),
    );
  }
}
