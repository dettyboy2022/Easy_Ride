import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 86, 83, 83),
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text(
        'Back',
        style: TextStyle(color: AppColor.textColor1),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
