import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../widgets/constants/app_color.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 35, 34, 34),
          title: const Text(
            'Favourite',
            style: TextStyle(color: AppColor.textColor1),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColor.backgroundColor)),
                child: const ListTile(
                  style: ListTileStyle.list,
                  leading: Icon(
                    Iconsax.location,
                    color: AppColor.textColor1,
                  ),
                  title: Text(
                    'Office',
                    style: TextStyle(color: AppColor.textColor1, fontSize: 18),
                  ),
                  subtitle: Text('2972 Westheimer Rd. Santa, Illinois 486',
                      style: TextStyle(color: AppColor.textColor1)),
                  trailing: Icon(
                    Iconsax.minus,
                    color: Colors.red,
                  ),
                ),
              );
            }));
  }
}
