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
      body: Column(
        children: [
          const CustomText(text: 'Available cars for ride'),
          const Text(
            '10 cars found',
            style: TextStyle(color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: double.infinity,
            height: 200,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'BMW Cabrio',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Automatic | 3 seats | Octane'),
                  subtitle: const Row(
                    children: [
                      Icon(Iconsax.location),
                      Text('  800m (5 mins away)')
                    ],
                  ),
                  trailing: Image.network(
                      'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689247712/easy_ride/image_6_bnuq9i.png'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
