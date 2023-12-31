import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  final double diameter;

  const CustomCircle({super.key, this.diameter = 200});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white;
    canvas.drawArc(
      Rect.fromCircle(
        radius: 300,
        center: Offset(size.height / 2, size.width / 1),
        // height: size.height,
        // width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
