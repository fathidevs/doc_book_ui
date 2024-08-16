import 'package:flutter/material.dart';

class Cards {
  static Widget clickableIcon(
      {Color backgroundColor = Colors.white,
      Color iconColor = Colors.black87,
      required IconData icon,
      double elevation = 1.0}) {
    return Card(
      elevation: elevation,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.black26,
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: SizedBox(
        width: 35.0,
        height: 35.0,
        child: Icon(
          color: iconColor,
          icon,
        ),
      ),
    );
  }
}
