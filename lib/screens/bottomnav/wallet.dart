import 'package:easy_ride/drawer.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Row(
              children: [
                OutlinedButton(onPressed: () {}, child: const Text('Add Money'))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(20),
                  child: const Column(
                    children: [Text('\$500'), Text('Available Balance')],
                  ),
                ),
                Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(20),
                  child: const Column(
                    children: [Text('\$200'), Text('Total Expend')],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(color: AppColor.textColor1),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: AppColor.textColor2),
                )
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: Icon(Iconsax.transaction_minus),
                    title: Text('Welton'),
                    subtitle: Text('Today at 09:20am'),
                    trailing: Text('\$-570.00'),
                  );
                })
          ],
        ),
      ),
    );
  }
}
