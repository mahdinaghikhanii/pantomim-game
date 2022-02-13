import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pantomim/models/category.dart';

class MyPainter extends CustomPainter {
  final List<Particle> particles;
  final double theta;
  // ignore: unused_field
  final Tween<double> _rotationTween = Tween(begin: 0, end: 2 * math.pi);

  MyPainter({required this.particles, required this.theta});
  @override
  void paint(Canvas canvas, Size size) {
    // paint brush
    var paint = Paint()..strokeWidth = 5;

    //generative art
    // double radius = 200.0;

    // ignore: avoid_function_literals_in_foreach_calls
    particles.forEach((particle) {
      double randomTheta = particle.startingTheta + theta;
      double radius = particle.radius;

      double dx = radius * theta * math.cos(randomTheta) + size.width / 2;
      double dy = radius * theta * math.sin(randomTheta) + size.height / 2;

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
