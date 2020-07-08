import 'dart:math' as math;
import 'package:flutter/material.dart';

class CustomTimerPainter1 extends CustomPainter {
  CustomTimerPainter1({
    this.animation,
    this.backgroundColor,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 15.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = Color(0xFF0066B1);
    double progress = (1.0 - animation.value) * 2 * math.pi * (4 / 19);
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter1 old) {
    return animation.value != old.animation.value ||
        backgroundColor != old.backgroundColor;
  }
}

class CustomTimerPainter2 extends CustomPainter {
  CustomTimerPainter2({
    this.animation,
    this.backgroundColor,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 15.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    paint.color = Color(0xFF008CCE);
    double progress = (1.0 - animation.value) * 2 * math.pi * (7 / 19);
    canvas.drawArc(
        Offset.zero & size, math.pi * (173 / 90), progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter2 old) {
    return animation.value != old.animation.value ||
        backgroundColor != old.backgroundColor;
  }
}

class CustomTimerPainter3 extends CustomPainter {
  CustomTimerPainter3({
    this.animation,
    this.backgroundColor,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 15.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    //canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = Color(0xFF52B8E6);
    double progress = (1.0 - animation.value) * 2 * math.pi * (8 / 19);
    canvas.drawArc(
        Offset.zero & size, math.pi * (479 / 180), progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter3 old) {
    return animation.value != old.animation.value ||
        backgroundColor != old.backgroundColor;
  }
}
