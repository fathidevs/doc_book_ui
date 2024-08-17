import 'package:flutter/material.dart';

import 'ticket_qr_path.dart';

class TicketQrLeftPainter extends CustomPainter {
  final Color backgroundColor;
  final double elevation;
  TicketQrLeftPainter({required this.backgroundColor, this.elevation = 1.0});
  @override
  void paint(Canvas canvas, Size size) {
    Path path = TicketQrLeftPath().getClip(size);
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

class TicketQrRightPainter extends CustomPainter {
  final Color backgroundColor;
  final double elevation;
  TicketQrRightPainter({required this.backgroundColor, this.elevation = 1.0});
  @override
  void paint(Canvas canvas, Size size) {
    Path path = TicketQrRightPath().getClip(size);
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
