import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade500,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: const Icon(Icons.my_location_sharp),
                  suffixIcon: const Icon(Icons.cancel)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent places',
                  style: TextStyle(color: AppColor.textColor1),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Clear All',
                      style: TextStyle(color: AppColor.textColor2),
                    ))
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
