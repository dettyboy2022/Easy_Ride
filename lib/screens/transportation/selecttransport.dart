import 'package:easy_ride/screens/transportation/availablec_cars.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';

class SelectTransport extends StatefulWidget {
  const SelectTransport({super.key});

  @override
  State<SelectTransport> createState() => _SelectTransportState();
}

class _SelectTransportState extends State<SelectTransport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const CustomText(text: 'Select your transport'),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                itemCount: transport.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AvailableCars()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff5a5a5a),
                          border: Border.all(color: AppColor.backgroundColor)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(transport[index]['image']),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            transport[index]['text'],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  List transport = [
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1688676789/easy_ride/Car_q1czks.png',
      'text': 'Car'
    },
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1688676789/easy_ride/Bike_qs5fjk.png',
      'text': 'Bike'
    },
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1688676789/easy_ride/Cycle_sidepl.png',
      'text': 'Cycle'
    },
    {
      'image':
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1688676789/easy_ride/Taxi_hfaacp.png',
      'text': 'Taxi'
    }
  ];
}
