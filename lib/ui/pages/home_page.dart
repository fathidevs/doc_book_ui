import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('title'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("hello"),
          ),
        ));
  }
}
