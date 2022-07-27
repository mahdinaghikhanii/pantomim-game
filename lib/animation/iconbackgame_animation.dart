import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../module/constans/constant.dart';
import '../module/extension/extension.dart';
import '../provider/team_provider.dart';
import '../views/screan/detail_game_screans_for_lunch.dart';

class IconBackGameAnimation extends StatefulWidget {
  const IconBackGameAnimation({Key? key}) : super(key: key);

  @override
  State<IconBackGameAnimation> createState() => _IconBackGameAnimationState();
}

class _IconBackGameAnimationState extends State<IconBackGameAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;
  late Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sizeAnimation = Tween<double>(begin: 60, end: 70).animate(controller);
    colorAnimation = ColorTween(
            begin: Colors.grey.withOpacity(0.2), end: kblue.withOpacity(0.2))
        .animate(controller);
    controller.addListener(() {
      setState(() {});
    });
    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final teamsProvider = Provider.of<TeamProvider>(context);
    return InkWell(
      onTap: () {
        teamsProvider.getDataTeam();
        context.nextScreans(const DetailGameScreans());
      },
      borderRadius: BorderRadius.circular(60),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Constans.kBigBorderRadius),
            boxShadow: [
              BoxShadow(
                color: colorAnimation.value,
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          width: sizeAnimation.value,
          height: sizeAnimation.value,
          child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Center(
                  child: Image.asset(
                'assets/icons/backgame.png',
                height: sizeAnimation.value - 5,
                width: sizeAnimation.value - 5,
              )))),
    );
  }
}
