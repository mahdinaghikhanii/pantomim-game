import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

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
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(top: 12),
        width: size.width * 0.32,
        height: size.height * 0.50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.white10.withOpacity(0.2), blurRadius: 25)
              ]),
              child: Image.asset(
                widget.image,
                width: size.width * 0.16,
                height: size.height * 0.08,
                fit: BoxFit.fill,
              ),
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.title,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          )
        ]),
      ),
    );
  }
}
