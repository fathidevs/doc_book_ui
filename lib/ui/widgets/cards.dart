import 'package:flutter/material.dart';

class Cards {
  static Widget clickableIconAndNotif({
    Color backgroundColor = Colors.white,
    Color iconColor = Colors.black87,
    required IconData icon,
    double elevation = 4.0,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    required VoidCallback onTap,
  }) {
    return Stack(
      children: [
        Card(
          elevation: elevation,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.black26,
          color: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          child: InkWell(
            onTap: onTap,
            borderRadius: borderRadius,
            child: SizedBox(
              width: 35.0,
              height: 35.0,
              child: Icon(
                color: iconColor,
                icon,
              ),
            ),
          ),
        ),
        Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 2.5,
                ),
              ]),
        ),
      ],
    );
  }
}
