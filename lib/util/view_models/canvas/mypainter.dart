import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:pantomim/models/category.dart';
import 'package:pantomim/theme/constant.dart';

class MyPainter extends CustomPainter {
  final List<Particle> particles;
  final double theta;

  MyPainter({required this.particles, required this.theta});
  @override
  void paint(Canvas canvas, Size size) {
    backgroundDefaultScafold:
    Colors.red;
    // paint brush
    var paint = Paint()..strokeWidth = 20;

    //generative art
    // double radius = 200.0;

    // ignore: avoid_function_literals_in_foreach_calls
    particles.forEach((particle) {
      double randomTheta = particle.startingTheta + theta;
      double radius = particle.radius;

      double dx = radius * math.cos(randomTheta) + size.width / 2;
      double dy = radius * math.sin(randomTheta) + size.height / 2;

      Offset position = Offset(dx, dy);

      paint.color = particle.color;

      canvas.drawCircle(position, particle.size, paint);
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
