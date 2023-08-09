import 'package:easy_ride/screens/authentication/signin.dart';
import 'package:easy_ride/screens/authentication/signup.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Image.network(
                      'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687040727/easy_ride/welcome_bg9sl4.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(text: 'Welcome'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Have a better sharing experience',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CustomElevated(
                    text: 'Create an account',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    }),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: AppColor.textColor2),
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(double.infinity, 50)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
                    },
                    child: const Text('Log in',
                        style: TextStyle(color: AppColor.textColor2))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
