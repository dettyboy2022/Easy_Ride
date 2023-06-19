import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
    );
  }
}

class CustomSubText extends StatelessWidget {
  const CustomSubText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
