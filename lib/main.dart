import 'package:flutter/material.dart';
import 'ui/pages/my_bookings.dart';
import 'ui/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.light(),
      darkTheme: MyTheme.dark(),
      themeMode: ThemeMode.light,
      home: const MyBookings(),
    );
  }
}
