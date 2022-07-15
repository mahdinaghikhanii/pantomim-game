import 'package:flutter/material.dart';
import 'package:pantomim/provider/team_provider.dart';

import '../constans/constant.dart';
import '../extension/extension.dart';

class TeamTextField extends StatelessWidget {
  final Function(String value) onchange;
  final String hintText;
  final bool enable;
  final int? number;
  final TeamProvider teamProvider;

  const TeamTextField(
      {Key? key,
      required this.onchange,
      this.number,
      required this.hintText,
      required this.teamProvider,
      required this.enable})
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
              enabled: enable,
              floatingLabelStyle: styleTextInputTextField,
              hintText: hintText,
              hintStyle: teamProvider.getNumberOfTeams() == 2
                  ? Theme.of(context).textTheme.bodyText1
                  : teamProvider.getNumberOfTeams() > 2
                      ? Theme.of(context).textTheme.bodyText1
                      : teamProvider.getNumberOfTeams() > 3
                          ? Theme.of(context).textTheme.bodyText1
                          : const TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            textAlign: TextAlign.center,
            style: styleTextInputTextField));
  }
}
