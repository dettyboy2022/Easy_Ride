import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          'Address',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
    );
  }
}
