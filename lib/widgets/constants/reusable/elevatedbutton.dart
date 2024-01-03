import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomElevated extends StatelessWidget {
  const CustomElevated(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: AppColor.textColor2),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
