import 'package:flutter/material.dart';

import '../my_theme.dart';
import 'cards.dart';

class MyAppBar {
  static PreferredSizeWidget? transparent({
    required String title,
    Color? backgroundColor,
  }) {
    return AppBar(
      elevation: 0.0,
      scrolledUnderElevation: 0.0,
      forceMaterialTransparency: true,
      leading: const Icon(Icons.keyboard_backspace),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        Cards.clickableIcon(
          icon: Icons.notifications_outlined,
          iconColor: MyTheme.light().colorScheme.primary,
        ),
        const SizedBox(width: 25.0 / 2),
      ],
    );
  }
}
