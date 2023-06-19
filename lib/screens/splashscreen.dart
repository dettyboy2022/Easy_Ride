import 'package:easy_ride/screens/onboarding.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigatetohome();
    super.initState();
  }

  navigatetohome() async {
    await Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(15),
                child: Image.network(
                    'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687164404/easy_ride/Group_rl39h1.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Easy Rider',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687164404/easy_ride/Infinity-1s-200px_2_1_tnwtqo.png')
            ],
          ),
        ));
  }
}
