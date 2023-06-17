import 'package:easy_ride/screens/authentication/otp.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Back',
          style: TextStyle(color: AppColor.textColor1),
        ),
        backgroundColor: Colors.black,
      ),
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
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: AppColor.textColor1)),
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
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: AppColor.backgroundColor),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const OTP()));
                  },
                  child: const Text('Sign Up')),
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
                              child: Icon(
                                e['icon'],
                                color: Colors.white,
                              ),
                            ))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Already have an account? Sign in',
                    style: TextStyle(color: AppColor.textColor1, fontSize: 15),
                  )
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
    {'icon': Icons.mail},
    {'icon': Icons.facebook},
    {'icon': Icons.apple}
  ];
}
