import 'package:flutter/material.dart';

class WidgetShowTextWinOrLoseDetail extends StatelessWidget {
  final String title;
  final String score;

  // ignore: use_key_in_widget_constructors
  const WidgetShowTextWinOrLoseDetail({
    required this.score,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, right: 10, left: 10),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const Spacer(),
          Text(
            score,
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
