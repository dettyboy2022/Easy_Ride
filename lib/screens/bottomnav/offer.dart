import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  const Offer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Special Offer'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.backgroundColor)),
              child: ListTile(
                leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.local_offer)),
                title: const Text(
                  'Discount 15% off',
                  style: TextStyle(color: AppColor.textColor1),
                ),
                subtitle: const Text(
                  'Special Promo valid for Black Friday',
                  style: TextStyle(color: AppColor.textColor1),
                ),
              ),
            );
          }),
    );
  }
}
