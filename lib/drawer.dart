import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(70), bottomRight: Radius.circular(70))),
      backgroundColor: const Color(0xff414141),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Iconsax.backward),
            const SizedBox(
              height: 10,
            ),
            const CircleAvatar(
              radius: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(text: 'Charles Ayomide'),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'charlesayomide@gmail.com',
              style: TextStyle(color: AppColor.textColor1),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: drawerProfile.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(
                              drawerProfile[index]['icon'],
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              drawerProfile[index]['text'],
                              style:
                                  const TextStyle(color: AppColor.textColor1),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 11,
                        thickness: 1,
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }

  List drawerProfile = [
    {'icon': Icons.person_2, 'text': 'Edit Profile'},
    {'icon': Iconsax.location, 'text': 'Address'},
    {'icon': Iconsax.book, 'text': 'History'},
    {'icon': Icons.chat, 'text': 'Complain'},
    {'icon': Icons.person_search, 'text': 'Referral'},
    {'icon': Icons.share, 'text': 'About Us'},
    {'icon': Icons.settings, 'text': 'Settings'},
    {'icon': Icons.help_center, 'text': 'Help and Support'},
    {'icon': Icons.logout, 'text': 'Logout'}
  ];
}
