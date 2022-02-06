import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:pantomim/models/category.dart';
import 'package:pantomim/util/view_models/canvas/mypainter.dart';

class ScoreScreans extends StatefulWidget {
  @override
  _ScoreScreansState createState() => _ScoreScreansState();
}

class _ScoreScreansState extends State<ScoreScreans> {
  List<Particle> particles = [];
  @override
  void initState() {
    super.initState();
    int numberOfParticles = 100;

    for (var i = 0; i < numberOfParticles; i++) {
      int randomSize = math.Random().nextInt(20);

      int randomR = math.Random().nextInt(256);
      int randomG = math.Random().nextInt(256);
      int randomB = math.Random().nextInt(256);

      Color randomColor = Color.fromARGB(256, randomR, randomG, randomB);
      Particle particle = Particle(size: randomSize, color: randomColor);
      particles.add(particle);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: MyPainter(particles: particles),
        child: Container(),
      ),
    );
  }
}
