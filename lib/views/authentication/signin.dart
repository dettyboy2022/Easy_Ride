import 'package:easy_ride/views/authentication/forgotpassword.dart';
import 'package:easy_ride/views/authentication/verification.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [CustomText(text: 'Sign In')],
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                style: TextStyle(color: AppColor.textColor1),
                autocorrect: false,
                enableSuggestions: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    label: Text('Email or Phone Number'),
                    labelStyle: TextStyle(color: AppColor.textColor1),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                style: TextStyle(color: AppColor.textColor1),
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                    label: Text('Enter Your Password'),
                    labelStyle: TextStyle(color: AppColor.textColor1),
                    border: OutlineInputBorder()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                      child: const Text(
                        'Forgot your Password?',
                        style: TextStyle(color: Colors.red),
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomElevated(
                text: 'Sign In',
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerificationPage()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'or',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: socials
                    .map((e) => Container(
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.white)),
                          child: Image.network(
                            e['image'],
                          ),
                        ))
                    .toList(),
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(text: 'Dont Have an account? '),
                TextSpan(text: ' Sign Up')
              ])),
            ],
          ),
        ),
      ),
    );
  }

  List socials = [
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687182263/easy_ride/Gmail_upijuz.png'
    },
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687182263/easy_ride/Facebook_ez4gbg.png'
    },
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687182264/easy_ride/Apple_d4yu1g.png'
    }
  ];
}
