import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
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
