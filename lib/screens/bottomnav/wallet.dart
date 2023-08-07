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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: const Text('Add Money'))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(30),
                    child: const Column(
                      children: [
                        Text('\$500'),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Available Balance')
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(30),
                    child: const Column(
                      children: [
                        Text('\$200'),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Total Expend')
                      ],
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
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      tileColor: Colors.white,
                      leading: Icon(Icons.navigation_sharp),
                      title: Text('Welton'),
                      subtitle: Text('Today at 09:20am'),
                      trailing: Text('\$- 570.00'),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
