import 'package:flutter/material.dart';
import 'ticket_painter.dart';
import 'my_theme.dart';

class TicketWidget extends StatefulWidget {
  const TicketWidget({
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
  State<TicketWidget> createState() => _TicketWidgetState();
}

double scale = 1.0;

class _TicketWidgetState extends State<TicketWidget> {
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
                    painter: TicketLeftPainter(
                      backgroundColor: MyTheme.light().colorScheme.primary,
                    ),
                  ),
                  // RIGHT
                  CustomPaint(
                    size: widget.screenSize,
                    painter: TicketRightPainter(
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
      flex: 10,
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
                  widget.data['city'],
                  style: st1,
                ),
                const SizedBox(width: 10.0),
                const Icon(Icons.circle, size: 5.0, color: Colors.white),
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
                  'Time',
                  style: st2,
                ),
                Text(
                  '${widget.data['time_start']} - ${widget.data['time_end']}',
                  style: st3,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: st2,
                    ),
                    Text(
                      widget.data['price'],
                      style: st3,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _rightData(Map<String, dynamic> rightData) {
    TextStyle st1 = TextStyle(
      color: MyTheme.light().primaryColorDark,
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    );
    TextStyle st2 = TextStyle(
      color: MyTheme.light().colorScheme.primary,
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
    );
    TextStyle st3 = const TextStyle(
      color: Colors.black,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    );
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            heightFactor: 0.2,
            child: Text(
              widget.data['date'].split('-')[1].toUpperCase(),
              style: st1,
            ),
          ),
          Text(
            widget.data['date'].split('-')[0],
            style: st2,
          ),
          Align(
            heightFactor: 0.0,
            child: Text(
              widget.data['date'].split('-')[2],
              style: st3,
            ),
          ),
        ],
      ),
    );
  }
}
