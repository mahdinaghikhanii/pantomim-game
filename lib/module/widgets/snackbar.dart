import 'package:flutter/material.dart';

import '../constans/constant.dart';
import '../extension/extension.dart';

class MyWidget extends StatelessWidget {
  final String text;

  const MyWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(
        backgroundColor: kblue,
        content: Text(
          text,
          style: context.textTheme.bodyText1!.copyWith(color: kwhite),
        ));
  }
}
