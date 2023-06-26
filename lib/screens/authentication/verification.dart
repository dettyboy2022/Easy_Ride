import 'package:easy_ride/screens/bottomnav/bottomnav.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(text: 'Verification Email or Phone number'),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Email or phone number',
                  hintStyle: TextStyle(color: AppColor.textColor1),
                  border: OutlineInputBorder()),
            ),
            const Spacer(),
            CustomElevated(
                text: 'Send OTP',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNav()));
                }),
          ],
        ),
      ),
    );
  }
}
