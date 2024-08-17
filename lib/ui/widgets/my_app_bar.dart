import 'package:flutter/material.dart';

import '../my_theme.dart';
import 'cards.dart';

class MyAppBar {
  static PreferredSizeWidget? transparent({
    required String title,
    Widget? leading,
  }) {
    return AppBar(
      elevation: 0.0,
      scrolledUnderElevation: 0.0,
      forceMaterialTransparency: true,
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        Cards.clickableIconAndNotif(
          icon: Icons.notifications_outlined,
          iconColor: MyTheme.light().colorScheme.primary,
          onTap: () {},
        ),
        const SizedBox(width: 25.0 / 2),
      ],
    );
  }
}
