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
      body: Center(
        child: Column(
          children: [
            const CustomText(text: 'Select your transport'),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                itemCount: transport.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                    child: Column(
                      children: [
                        Image.network(transport[index]['image']),
                        Text(transport[index]['text'])
                      ],
                    ),
                  );
                })
          ],
        ),
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
