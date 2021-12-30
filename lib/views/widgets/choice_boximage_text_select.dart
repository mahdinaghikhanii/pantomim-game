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
    return Column(children: [
      InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: widget.onTap,
        child: Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(top: 24.0),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.white10.withOpacity(0.2), blurRadius: 25)
                ]),
                child: Image.asset(
                  widget.image,
                  width: 70,
                  height: 65,
                  fit: BoxFit.fill,
                ),
              ),
            ]),
            Text(
              widget.title,
              style: Theme.of(context).primaryTextTheme.subtitle1,
            )
          ]),
        ),
      ),
    ]);
  }
}
