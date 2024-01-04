import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          'Settings',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ListTile(
              title: Text('Hello'),
            );
          }),
    );
  }
}
