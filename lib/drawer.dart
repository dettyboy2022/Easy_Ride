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
              topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
      backgroundColor: const Color(0xff414141),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomText(text: 'Charles Ayomide'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'charlesayomide@gmail.com',
                    style: TextStyle(color: AppColor.textColor1),
                  ),
                ],
              ),
            ),
            ListView.builder(
                primary: false,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: drawerProfile.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          drawerProfile[index]['icon'],
                          color: Colors.white,
                        ),
                        title: Text(
                          drawerProfile[index]['text'],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Divider(),
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
    {'icon': Icons.logout, 'text': 'Logout'},
  ];
}
