import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          'Help & Support',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              'Lorem ipsum dolor sit amet consectetur. Sit pulvinar mauris mauris eu nibh semper nisl pretium laoreet. Sed non faucibus ac lectus eu arcu. Nulla sit congue facilisis vestibulum egestas nisl feugiat pharetra. Odio sit tortor morbi at orci ipsum dapibus interdum. Lorem felis est aliquet arcu nullam pellentesque. Et habitasse ac arcu et nunc euismod rhoncus facilisis sollicitudin.',
              style: TextStyle(color: AppColor.textColor1),
            )
          ],
        ),
      ),
    );
  }
}
