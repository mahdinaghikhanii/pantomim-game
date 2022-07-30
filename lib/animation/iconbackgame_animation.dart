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
    sizeAnimation = Tween<double>(begin: 70, end: 80).animate(controller);
    colorAnimation = ColorTween(begin: kwhite, end: kblue).animate(controller);
    controller.addListener(() {
      setState(() {});
    });
    controller.repeat();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
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
          decoration: const BoxDecoration(),
          width: sizeAnimation.value,
          height: sizeAnimation.value,
          child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Center(child: Image.asset('assets/icons/backgame.png')))),
    );
  }
}
