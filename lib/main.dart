import 'package:easy_ride/screens/splashscreen.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 35, 34, 34),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffFEC400)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      // home: const SelectTransport(),
    );
  }
}
