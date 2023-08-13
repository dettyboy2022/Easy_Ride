import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:flutter/material.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({super.key});

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Amount',
                  hintStyle: TextStyle(color: AppColor.textColor1),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Select Payment Method',
              style: TextStyle(color: AppColor.textColor1),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: payments.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      tileColor: AppColor.backgroundColor,
                      leading: Image.network(payments[index]['image']),
                      title: Text(
                        payments[index]['method'],
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                }),
            const Spacer(),
            CustomElevated(text: 'Confirm', onPressed: () {})
          ],
        ),
      ),
    );
  }


  List payments = [
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1691649130/easy_ride/Visa_d67h3i.png',
      'method': 'Visa Card'
    },
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1691649129/easy_ride/Payment_aed9vp.png',
      'method': 'MasterCard'
    },
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1691649110/easy_ride/Payment_1_ap265p.png',
      'method': 'PayPal'
    },
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1691649129/easy_ride/Payment_2_jglcsy.png',
      'method': 'Bank Transfer'
    }
  ];
}
