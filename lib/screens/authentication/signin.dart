import 'package:easy_ride/screens/authentication/forgotpassword.dart';
import 'package:easy_ride/screens/authentication/verification.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_ride/firebase_options.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

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
              TextField(
                style: const TextStyle(color: AppColor.textColor1),
                controller: _email,
                autocorrect: false,
                enableSuggestions: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    label: Text('Email or Phone Number'),
                    labelStyle: TextStyle(color: AppColor.textColor1),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                style: const TextStyle(color: AppColor.textColor1),
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                controller: _password,
                decoration: const InputDecoration(
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
                  await Firebase.initializeApp(
                      options: DefaultFirebaseOptions.currentPlatform);
                  final email = _email.text;
                  final password = _password.text;
                  final UserCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email, password: password);
                  print(UserCredential);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const VerificationPage()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
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
