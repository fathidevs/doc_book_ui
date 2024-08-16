import 'package:flutter/material.dart';
import '../widgets/my_app_bar.dart';

class MyBookings extends StatelessWidget {
  const MyBookings({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).colorScheme.primary.withOpacity(.05);
    return Scaffold(
      appBar:
          MyAppBar.transparent(title: 'My Bookings', backgroundColor: color),
      backgroundColor: color,
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("hello"),
        ),
      ),
    );
  }
}
