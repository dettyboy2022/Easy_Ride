import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(text: 'Mustang Shelby GT'),
          const Row(
            children: [
              Icon(Iconsax.star),
              SizedBox(
                width: 20,
              ),
              Text(
                '4.9 (531 reviews)',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     const Icon(Icons.navigate_before),
          //     SizedBox(
          //       height: 250,
          //       width: double.infinity,
          //       child: PageView(
          //         scrollDirection: Axis.horizontal,
          //         children: [
          //           Image.network(
          //             'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_3_gclcit.png',
          //             fit: BoxFit.contain,
          //           ),
          //           Image.network(
          //             'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_3_gclcit.png',
          //             fit: BoxFit.contain,
          //           ),
          //           Image.network(
          //             'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_3_gclcit.png',
          //             fit: BoxFit.contain,
          //           )
          //         ],
          //       ),
          //     ),
          //     const Icon(Icons.navigate_next)
          //   ],
          // ),
          const Text(
            'Specifications',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Car features',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    tileColor: Colors.grey,
                    title: const Text('Model'),
                    trailing: const Text('GT5000'),
                  ),
                );
              })
        ],
      ),
    );
  }
}
