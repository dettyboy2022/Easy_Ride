import 'package:easy_ride/models/available_cars_model.dart';
import 'package:easy_ride/screens/transportation/car_details.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AvailableCars extends StatefulWidget {
  const AvailableCars({super.key});

  @override
  State<AvailableCars> createState() => _AvailableCarsState();
}

class _AvailableCarsState extends State<AvailableCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(text: 'Available cars for ride'),
              const Text(
                '10 cars found',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: carsList.length,
                  itemBuilder: (context, index) {
                    final selectedCar = carsList[index];
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          // color: const Color(0xFF35383F),
                          color: Colors.grey),
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            carsList[index].car,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: const Text('Automatic | 3 seats | Octane'),
                            subtitle: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Iconsax.location),
                                Text('  800m (5 mins away)')
                              ],
                            ),
                            trailing: Image.network(carsList[index].image),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0, color: AppColor.textColor2),
                                      borderRadius: BorderRadius.circular(5)),
                                  minimumSize: const Size(double.infinity, 50)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CarDetails(
                                              carInfo: selectedCar,
                                            )));
                              },
                              child: const Text(
                                'View Car',
                                style: TextStyle(
                                    color: AppColor.textColor2, fontSize: 14),
                              ))
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
