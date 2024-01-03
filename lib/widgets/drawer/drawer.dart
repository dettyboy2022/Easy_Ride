import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:easy_ride/widgets/drawer/widgets/aboutus.dart';
import 'package:easy_ride/widgets/drawer/widgets/complain.dart';
import 'package:easy_ride/widgets/drawer/widgets/referral.dart';
import 'package:easy_ride/widgets/drawer/widgets/settings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'widgets/address.dart';
import 'widgets/helpsupport.dart';
import 'widgets/history.dart';

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
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: CustomText(text: 'Charles Ayomide'),
                accountEmail: Text('dettyboy@icloud.com')),
            ListView.builder(
                primary: false,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: drawerProfile.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _navigateToPage(
                              context, drawerProfile[index]['text']);
                        },
                        child: ListTile(
                          leading: Icon(
                            drawerProfile[index]['icon'],
                            color: Colors.white,
                          ),
                          title: Text(
                            drawerProfile[index]['text'],
                            style: const TextStyle(color: Colors.white),
                          ),
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

// to navigate to pages  in the drawer
  void _navigateToPage(BuildContext context, String itemText) {
    switch (itemText) {
      case 'Address':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Address()),
        );
        break;
      case 'History':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const History()),
        );
        break;
      case 'Complain':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Complain()),
        );
        break;
      case 'Referral':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Referral()),
        );
        break;
      case 'About Us':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AboutUs()),
        );
        break;
      case 'Settings':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Settings()),
        );
        break;
      case 'Help and Support':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HelpSupport()),
        );
    }
    // Navigator.pop(context);
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
