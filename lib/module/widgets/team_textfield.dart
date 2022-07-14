import 'package:flutter/material.dart';

import '../constans/constant.dart';
import '../extension/extension.dart';

class TeamTextField extends StatelessWidget {
  final Function(String value) onchange;
  final String hintText;
  const TeamTextField(
      {Key? key, required this.onchange, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        color: Colors.transparent,
        width: context.width * 0.30,
        height: context.height * 0.10,
        child: TextField(
            onChanged: onchange,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.bodyText1,
            ),
            textAlign: TextAlign.center,
            style: styleTextInputTextField));
  }
}
