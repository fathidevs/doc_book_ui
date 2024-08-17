import 'package:flutter/material.dart';

import 'ticket_path.dart';

class TicketLeftPainter extends CustomPainter {
  final Color backgroundColor;
  final double elevation;
  TicketLeftPainter({required this.backgroundColor, this.elevation = 1.0});
  @override
  void paint(Canvas canvas, Size size) {
    Path path = TicketPathLeft().getClip(size);
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = backgroundColor;
    Paint shadowPaint =
        Shadow(blurRadius: elevation, color: Colors.black12).toPaint();
    canvas.drawPath(path.shift(const Offset(-1.5, 1.0)), shadowPaint);
    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TicketRightPainter extends CustomPainter {
  final Color backgroundColor;
  final double elevation;
  TicketRightPainter({required this.backgroundColor, this.elevation = 1.0});
  @override
  void paint(Canvas canvas, Size size) {
    Path path = TicketPathRight().getClip(size);
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = backgroundColor;
    Paint shadowPaint =
        Shadow(blurRadius: elevation, color: Colors.black12).toPaint();
    canvas.drawPath(path.shift(const Offset(1.5, 1.0)), shadowPaint);
    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
