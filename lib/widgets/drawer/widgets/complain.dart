import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:flutter/material.dart';

class Complain extends StatelessWidget {
  const Complain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text(
          'Complain',
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
      ),
    );
  }
}
