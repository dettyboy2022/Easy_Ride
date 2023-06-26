import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687770781/easy_ride/Map_wbfwmd.png'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
