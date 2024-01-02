import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../firebase_options.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign up',
                style: TextStyle(color: AppColor.textColor1, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name',
                    hintStyle: TextStyle(color: AppColor.textColor1)),
              ),
              const SizedBox(
                height: 20,
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
                height: 20,
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
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: AppColor.textColor1)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                height: 50,
                width: double.infinity,
                child: DropdownButton(
                    padding: const EdgeInsets.only(left: 10),
                    dropdownColor: Colors.grey.shade900,
                    value: dropdownvalue,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: const TextStyle(color: AppColor.textColor1),
                          ));
                    }).toList(),
                    underline: const SizedBox(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              RadioListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    'By signing up, you agree to the Terms of service and Privacy policy.',
                    style: TextStyle(color: AppColor.textColor1),
                  ),
                  value: 'value',
                  groupValue: groupValue,
                  onChanged: (value) {}),
              const SizedBox(
                height: 15,
              ),
              CustomElevated(
                  text: 'Sign Up',
                  onPressed: () {
                    () async {
                      await Firebase.initializeApp(
                          options: DefaultFirebaseOptions.currentPlatform);
                      final email = _email.text;
                      final password = _password.text;
                      final userCredential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: email, password: password);
                      setState(() {
                        print(userCredential);
                      });
                    };
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const OTP()));
                  }),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  const Text(
                    'or',
                    style: TextStyle(color: AppColor.textColor1),
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
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(color: AppColor.textColor1)),
                    TextSpan(
                        text: ' Sign in',
                        style: TextStyle(color: AppColor.textColor2))
                  ]))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  String dropdownvalue = 'Male';
  var items = ['Male', 'Female', 'Others'];

  String groupValue = 'male';

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
