import 'package:flutter/material.dart';

import 'package:pantomim/main.dart';
import 'package:pantomim/module/constans/constant.dart';

class RowShowTeamAndScore extends StatelessWidget {
  const RowShowTeamAndScore(
      {Key? key,
      required this.nameTeam,
      required this.scoreTeam,
      required this.visiblity,
      required this.iconVisibility})
      : super(key: key);
  final String nameTeam;
  final String scoreTeam;
  final bool visiblity;
  final bool iconVisibility;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visiblity,
      child: Container(
        padding: const EdgeInsets.only(left: 0, top: 15, bottom: 15, right: 00),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: languageProvider.currentLocale == const Locale('en')
              ? const EdgeInsets.only(right: 15)
              : const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Text(
                nameTeam,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                width: 20,
              ),
              Visibility(
                  visible: iconVisibility,
                  child: const Icon(Icons.play_arrow, color: kwhite, size: 28)),
              const Spacer(),
              Text(
                scoreTeam,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
