import 'package:easy_ride/models/available_cars_model.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CarDetails extends StatefulWidget {
  final AvailableCars carInfo;
  const CarDetails({super.key, required this.carInfo});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: widget.carInfo.car),
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
            Row(
              children: [
                const Icon(Icons.navigate_before),
                SizedBox(
                  height: 250,
                  width: 100,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.network(
                        'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_3_gclcit.png',
                        fit: BoxFit.contain,
                      ),
                      Image.network(
                        'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_3_gclcit.png',
                        fit: BoxFit.contain,
                      ),
                      Image.network(
                        'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_3_gclcit.png',
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
                const Icon(Icons.navigate_next)
              ],
            ),
            const Text(
              'Specifications',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: specifications
                  .map((e) => Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey,
                        ),
                        child: Column(
                          children: [
                            const Icon(Icons.abc),
                            Text(
                              e['text'],
                              style: const TextStyle(
                                  color: AppColor.textColor1, fontSize: 16),
                            ),
                            Text(
                              e['subtext'],
                              style:
                                  const TextStyle(color: AppColor.textColor1),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Car features',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            ListView.builder(
                primary: false,
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
                }),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(
                            width: 2, color: AppColor.backgroundColor),
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text('Book Later')),
                const SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: AppColor.backgroundColor,
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text('Ride Now'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

List specifications = [
  {
    IconData: Icons.energy_savings_leaf,
    'text': 'Max.Power',
    'subtext': '2500hp'
  },
  {
    IconData: Icons.energy_savings_leaf,
    'text': 'Fuel',
    'subtext': '10km per litre'
  },
  {
    IconData: Icons.energy_savings_leaf,
    'text': 'Max.Speed',
    'subtext': '230kph'
  },
  {IconData: Icons.energy_savings_leaf, 'text': '0-60mph', 'subtext': '2.5sec'},
];
