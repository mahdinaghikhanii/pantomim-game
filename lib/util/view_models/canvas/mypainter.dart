import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:pantomim/models/category.dart';

class MyPainter extends CustomPainter {
  final List<Particle> particles;

  MyPainter({required this.particles});
  @override
  void paint(Canvas canvas, Size size) {
    // paint brush
    var paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    //draw circle
    Offset centerPoint = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(centerPoint, 180, paint);

    particles.forEach((particles) {
      math.Random().nextDouble() * (2 * math.pi);
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
