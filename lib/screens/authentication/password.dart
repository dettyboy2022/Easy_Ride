import 'package:easy_ride/screens/authentication/profile_reg.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, right: 15, left: 15, bottom: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  CustomText(text: 'Set Password'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Set your password'),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: 'Enter Your Password',
                        hintStyle: TextStyle(color: AppColor.textColor1),
                        suffixIcon: Icon(Iconsax.eye),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: AppColor.textColor1),
                        suffixIcon: Icon(Iconsax.eye),
                        border: OutlineInputBorder()),
                  )
                ],
              ),
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
                            builder: (context) => const CreateProfile()));
                  },
                  child: const Text('Register'))
            ],
          ),
        ),
      ),
    );
  }
}
