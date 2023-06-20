import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
        child: Column(
          children: [
            const Text('Sign in'),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Email or Phone Number',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.backgroundColor),
                onPressed: () {},
                child: const Text('Sign Up')),
            const Text('or'),
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
            
          ],
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
