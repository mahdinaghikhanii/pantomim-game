import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';
import 'package:pantomim/models/category.dart';
import 'package:pantomim/theme/constant.dart';
import 'package:pantomim/util/view_models/canvas/mypainter.dart';

class ScoreScreans extends StatefulWidget {
  @override
  _ScoreScreansState createState() => _ScoreScreansState();
}

class _ScoreScreansState extends State<ScoreScreans>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  List<Particle> particles = [];

  genereteListOfParticles() {
    int numberOfParticles = 200;
    for (int i = 0; i < numberOfParticles; i++) {
      double randomSize = math.Random().nextDouble() * 20;

      int randomR = math.Random().nextInt(256);
      int randomG = math.Random().nextInt(256);
      int randomB = math.Random().nextInt(256);

      Color randomColor = Color.fromARGB(255, randomR, randomG, randomB);
      double thetaRandom = math.Random().nextDouble() * (2 * math.pi);

      double radiusRandom = math.Random().nextDouble() * 100 + 20;

      Particle particle = Particle(
          size: randomSize,
          color: randomColor,
          startingTheta: thetaRandom,
          radius: radiusRandom);
      particles.add(particle);
    }
  }

  @override
  void initState() {
    super.initState();
    genereteListOfParticles();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 8),
    );
    Tween<double> _rotationTween = Tween(begin: 0, end: 2 * math.pi);
    animation = _rotationTween.animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.repeat(max: 1);

    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var localApp = S.of(context);
    return Container(
      decoration: backgroundDefaultScafold,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomPaint(
          painter: MyPainter(particles: particles, theta: animation.value),
          child: Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Positioned(
                    top: -size.height * 90,
                    child: Container(
                      width: size.width * 0.70,
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(30)),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'YOU ',
                                style: Theme.of(context).textTheme.headline1),
                            TextSpan(
                                text: 'WON',
                                style: Theme.of(context).textTheme.subtitle1)
                          ])),
                    ),
                  ),
                  Text('Word rating ')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
