import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:pantomim/models/category.dart';
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
  Tween<double> _rotationTween = Tween(begin: 0, end: 2 * math.pi);

  genereteListOfParticles() {
    int numberOfParticles = 100;
    for (int i = 0; i < numberOfParticles; i++) {
      double randomSize = math.Random().nextDouble() * 20;

      int randomR = math.Random().nextInt(256);
      int randomG = math.Random().nextInt(256);
      int randomB = math.Random().nextInt(256);

      Color randomColor = Color.fromARGB(255, randomR, randomG, randomB);
      double thetaRandom = math.Random().nextDouble() * (2 * math.pi);

      double radiusRandom = math.Random().nextDouble() * 200 + 20;

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

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: MyPainter(particles: particles, theta: animation.value),
        child: Container(),
      ),
    );
  }
}
