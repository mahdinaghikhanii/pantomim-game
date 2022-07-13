import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/module/constans/constant.dart';

class ChoiceTopic extends StatefulWidget {
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
  State<ChoiceTopic> createState() => _ChoiceTopicState();
}

class _ChoiceTopicState extends State<ChoiceTopic> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInLeftBig(
      duration: const Duration(seconds: 1),
      child: InkWell(
        borderRadius: BorderRadius.circular(Constans.kBigBorderRadius),
        onTap: widget.onTap,
        child: Column(
          children: [
            Container(
              width: size.width * 0.32,
              height: size.height * 0.11,
              decoration: BoxDecoration(
                color: Colors.black38.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.image,
                      width: size.width * 0.17,
                      height: size.height * 0.08,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 10),
                  ]),
            ),
            const SizedBox(height: 15),
            Text(widget.title,
                style: Theme.of(context).textTheme.button!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15))
          ],
        ),
      ),
    );
  }
}
