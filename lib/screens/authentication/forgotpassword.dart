import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              const CustomText(text: 'Forgot Password'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Select which contact details should \nwe use to reset your password',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: const Color(0xffFFF9c4),
                child: const ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Via SMS'),
                  subtitle: Text(' ******** 70'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.backgroundColor),
                  color: const Color(0xff1F212A),
                ),
                child: const ListTile(
                  leading: Icon(Icons.chat),
                  title: Text(
                    'Via Email',
                    style: TextStyle(color: AppColor.textColor1),
                  ),
                  subtitle: Text(' ******xyz@gmail.com',
                      style: TextStyle(color: AppColor.textColor1)),
                ),
              ),
              const Spacer(),
              CustomElevated(text: 'Continue', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
