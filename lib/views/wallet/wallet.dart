import 'package:easy_ride/views/wallet/add_money.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: AppColor.textColor2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: AppColor.textColor2,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Iconsax.notification,
                              color: AppColor.textColor2,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AddMoney()));
                            },
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.backgroundColor,
                          ),
                          height: 150,
                          width: 180,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$500',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Available Balance',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.backgroundColor,
                          ),
                          height: 150,
                          width: 180,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$200',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Total Expend',
                                style: TextStyle(fontSize: 15),
                              )
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
                  ],
                ),
                ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: transaction.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          tileColor: Colors.white,
                          leading: Image.network(transaction[index]['image']),
                          title: Text(transaction[index]['name']),
                          subtitle: Text(transaction[index]['time']),
                          trailing: const Text(
                            '\$ - 570.00',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  List transaction = [
    {
      'name': 'Omotosho',
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1704189873/easy_ride/Up_fijly0.png',
      'time': 'Today at 09:20am',
    },
    {
      'name': 'Ayomide',
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1704190340/easy_ride/Down_thsm3m.png',
      'time': 'Today at 10:27am'
    },
    {
      'name': 'Charles',
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1704189873/easy_ride/Up_fijly0.png',
      'time': 'Today at 11:18am'
    },
    {
      'name': 'Bobby',
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1704190340/easy_ride/Down_thsm3m.png',
      'time': 'Today at 01:48pm'
    },
  ];
}
