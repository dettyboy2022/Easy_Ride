import 'package:easy_ride/views/favourite/favourite.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../home/homepage.dart';
import '../offer/offer.dart';
import '../profile/profile.dart';
import '../wallet/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

int currentIndex = 0;

List<Widget> pages = [
  const HomePage(),
  const Favourite(),
  const Wallet(),
  const Offer(),
  const Profile(),
];

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: SizedBox(
          height: 80,
          child: BottomNavigationBar(
              elevation: 8,
              backgroundColor: const Color.fromARGB(255, 35, 34, 34),
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              unselectedItemColor: AppColor.textColor1,
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              fixedColor: AppColor.textColor2,
              items: [
                const BottomNavigationBarItem(
                    icon: Icon(Iconsax.house), label: 'Home'),
                const BottomNavigationBarItem(
                    icon: Icon(Iconsax.favorite_chart), label: 'Favourite'),
                BottomNavigationBarItem(
                    icon: Container(
                      height: 40,
                      width: 40,
                      color: Colors.yellow,
                      child: const Icon(
                        Icons.wallet,
                        color: Colors.black,
                      ),
                    ),
                    label: 'Wallet'),
                const BottomNavigationBarItem(
                    icon: Icon(Iconsax.percentage_circle), label: 'Offer'),
                const BottomNavigationBarItem(
                    icon: Icon(Iconsax.profile_2user5), label: 'Profile')
              ]),
        ),
      ),
    );
  }
}
