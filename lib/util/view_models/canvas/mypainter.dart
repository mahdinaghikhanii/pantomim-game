import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:pantomim/models/category.dart';

class MyPainter extends CustomPainter {
  final List<Particle> particles;

  MyPainter({required this.particles});
  @override
  void paint(Canvas canvas, Size size) {
    //generative art
    // double radius = 200.0;

    // ignore: avoid_function_literals_in_foreach_calls
    particles.forEach((particle) {
      // paint brush
      var paint = Paint()
        ..color = particle.color
        ..strokeWidth = 10;

      double radius = math.Random().nextDouble() * 200 + 20;
      double theta = math.Random().nextDouble() * (2 * math.pi);

      double dx = radius * math.cos(theta) + size.width / 2;
      double dy = radius * math.sin(theta) + size.height / 2;

      Offset position = Offset(dx, dy);

      canvas.drawCircle(position, particle.size, paint);
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
