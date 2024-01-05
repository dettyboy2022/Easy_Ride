import 'package:easy_ride/views/onboarding.dart';
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
        backgroundColor: AppColor.textColor2,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [  
              Image.network(
                  'https://res.cloudinary.com/dxje0rp9f/image/upload/v1703322928/easy_ride/Logo_2_yblk39.png'),
              Image.network(
                  'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687164404/easy_ride/Infinity-1s-200px_2_1_tnwtqo.png')
            ],
          ),
        ));
  }
}
