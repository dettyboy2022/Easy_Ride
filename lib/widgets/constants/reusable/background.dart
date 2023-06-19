import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(),
    );
  }
}
