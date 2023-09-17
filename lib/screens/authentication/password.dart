import 'package:easy_ride/screens/authentication/profile_reg.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, right: 15, left: 15, bottom: 20),
        child: Center(
          child: Column(
            children: [
              const CustomText(text: 'Set Password'),
              const SizedBox(
                height: 10,
              ),
              const Text('Set your password'),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    hintStyle: TextStyle(color: AppColor.textColor1),
                    suffixIcon: Icon(Iconsax.eye),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: AppColor.textColor1),
                    suffixIcon: Icon(Iconsax.eye),
                    border: OutlineInputBorder()),
              ),
              const Spacer(),
              CustomElevated(
                  text: 'Register',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateProfile()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
