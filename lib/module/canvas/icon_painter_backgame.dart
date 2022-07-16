import 'package:flutter/material.dart';

import '../constans/constant.dart';

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
    fourthPaint.color = kred.withOpacity(0.3);

    fourthPaint.style = PaintingStyle.fill;

    titleStyle = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w900,
    );
    //drawText(canvas, Offset.zero, centerCircleRadius, titleStyle, "بازی قبل");

    // drawIcon(canvas, Offset.zero, centerCircleRadius);

    canvas.drawCircle(Offset.zero, centerCircleRadius, fourthPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  var titleStyle = const TextStyle(
    color: Colors.black,
    fontSize: 40,
    fontWeight: FontWeight.w900,
  );

  drawIcon(Canvas canvas, Offset position, double width) {
    const icon = Icons.refresh_sharp;
    TextPainter textPainter = TextPainter(
        textDirection: TextDirection.ltr, textAlign: TextAlign.center);
    textPainter.text = TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(fontSize: 50.0, fontFamily: icon.fontFamily));
    textPainter.layout(minWidth: 0, maxWidth: width);
    textPainter.paint(canvas, position);
  }

  drawImage(Canvas canvas, Offset position, double width) {
    //const String imgAddres = "assets/icons/backgame.png";
  }

  drawText(Canvas canvas, Offset position, double width, TextStyle style,
      String text) {
    final textSpan = TextSpan(text: text, style: style);
    final textPainter = TextPainter(text: textSpan);
    textPainter.layout(minWidth: 0, maxWidth: width);
    textPainter.paint(canvas, position);
  }
}
