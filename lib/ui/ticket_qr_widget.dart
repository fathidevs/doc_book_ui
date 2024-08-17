import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'my_theme.dart';
import 'ticket_qr_painter.dart';

class TicketQrWidget extends StatefulWidget {
  const TicketQrWidget({
    super.key,
    required this.screenSize,
    this.padding = const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
    required this.data,
    required this.onTap,
  });
  final Size screenSize;
  final EdgeInsets padding;
  final Map<String, dynamic> data;
  final VoidCallback onTap;

  @override
  State<TicketQrWidget> createState() => _TicketQrWidgetState();
}

double scale = 1.0;

class _TicketQrWidgetState extends State<TicketQrWidget> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Padding(
        padding: widget.padding,
        child: GestureDetector(
          onTap: widget.onTap,
          onTapDown: (_) => setState(() => scale = 1.01),
          onTapUp: (_) => setState(() => scale = 1.0),
          onTapCancel: () => setState(() => scale = 1.0),
          child: AspectRatio(
            aspectRatio: 2 / 1,
            child: SizedBox(
              height: widget.screenSize.width * .5,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // LEFT
                  CustomPaint(
                    size: widget.screenSize,
                    painter: TicketQrLeftPainter(
                      backgroundColor: MyTheme.light().colorScheme.primary,
                    ),
                  ),
                  // RIGHT
                  CustomPaint(
                    size: widget.screenSize,
                    painter: TicketQrRightPainter(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      _leftData(widget.data),
                      _rightData(widget.data),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _leftData(
    Map<String, dynamic> leftData,
  ) {
    TextStyle st1 = const TextStyle(
        fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.white);
    TextStyle st2 = const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
    );
    TextStyle st3 = const TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white);
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 30.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.flag_circle, color: Colors.white),
                const SizedBox(width: 10.0),
                Text(
                  widget.data['country'],
                  style: st1,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: st2,
                ),
                Text(
                  widget.data['city'],
                  style: st3,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Booking ID',
                  style: st2,
                ),
                Text(
                  widget.data['booking_id'],
                  style: st3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _rightData(Map<String, dynamic> rightData) {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(35.0),
        child: QrImageView(
          data: '1234567890',
          version: QrVersions.auto,
          // size: 200.0,
        ),
      ),
    );
  }
}
