import 'package:easy_ride/screens/authentication/password.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Phone verification',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Enter your OTP code',
                style: TextStyle(fontSize: 16),
              ),
              const Text('Didnt receive code? Resend again'),
              const Spacer(),
              CustomElevated(
                text: 'Verify',
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PasswordScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
