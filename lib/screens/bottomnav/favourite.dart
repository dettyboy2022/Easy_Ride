import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Favourite',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
