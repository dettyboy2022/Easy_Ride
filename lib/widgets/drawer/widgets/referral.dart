import 'package:flutter/material.dart';

import '../../constants/app_color.dart';
import '../../constants/reusable/elevatedbutton.dart';

class Referral extends StatelessWidget {
  const Referral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          'Referral',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Refer a friend and Earn \$20',
              style: TextStyle(color: AppColor.textColor1),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  suffixIcon: Icon(Icons.copy),
                  hintText: 'Enter referral code',
                  hintStyle: TextStyle(color: AppColor.textColor1)),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomElevated(text: 'Invite', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
