import 'package:easy_ride/screens/authentication/password.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
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
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
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
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: AppColor.backgroundColor),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswordScreen()));
                  },
                  child: const Text('Verify'))
            ],
          ),
        ),
      ),
    );
  }
}
