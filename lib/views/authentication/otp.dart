import 'package:easy_ride/views/authentication/password.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  otpfield(first: true, last: false),
                  otpfield(first: true, last: false),
                  otpfield(first: true, last: false),
                  otpfield(first: true, last: false),
                  otpfield(first: true, last: true),
                ],
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(text: 'Didnt receive code? '),
                TextSpan(
                    text: ' Resend again',
                    style: TextStyle(color: AppColor.textColor2))
              ])),
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

  otpfield({first, last}) {
    return SizedBox(
      height: 100,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 1 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: true,
          cursorColor: Colors.lightBlue[700],
          readOnly: false,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          decoration: InputDecoration(
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2, color: Colors.lightBlue.shade700),
                  borderRadius: BorderRadius.circular(12))),
        ),
      ),
    );
  }
}
