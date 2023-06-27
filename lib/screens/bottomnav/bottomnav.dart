import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../home/homepage.dart';
import 'favourite.dart';
import 'offer.dart';
import 'profile.dart';
import 'wallet.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // shape: OvalBorder(),
        child: const Icon(Iconsax.wallet_1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: AppColor.backgroundColor,
          // backgroundColor: Colors.black,
          // showUnselectedLabels: true,
          // unselectedLabelStyle: const TextStyle(color: Colors.red),
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.house), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.favorite_chart), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.wallet_1), label: 'Wallet'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.percentage_circle), label: 'Offer'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.profile_2user5), label: 'Profile')
          ]),
    );
  }
}
