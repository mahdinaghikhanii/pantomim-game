import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantomim/module/constans/constant.dart';

class IconPainterBackGame extends CustomPainter {
  final double firstRippleRadius;
  final double firstRippleOpacity;
  final double firstRippleStrokeWidth;
  final double secondRippleRadius;
  final double secondRippleOpacity;
  final double secondRippleStrokeWidth;
  final double thirdRippleRadius;
  final double thirdRippleOpacity;
  final double thirdRippleStrokeWidth;
  final double centerCircleRadius;

  IconPainterBackGame(
      this.firstRippleRadius,
      this.firstRippleOpacity,
      this.firstRippleStrokeWidth,
      this.secondRippleRadius,
      this.secondRippleOpacity,
      this.secondRippleStrokeWidth,
      this.thirdRippleRadius,
      this.thirdRippleOpacity,
      this.thirdRippleStrokeWidth,
      this.centerCircleRadius);

  @override
  void paint(Canvas canvas, Size size) {
    Paint fourthPaint = Paint();

    fourthPaint.color = kred;

    fourthPaint.style = PaintingStyle.fill;

    canvas.drawCircle(Offset.zero, centerCircleRadius, fourthPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
