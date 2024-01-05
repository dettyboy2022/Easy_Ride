import 'package:flutter/material.dart';
import '../../constants/app_color.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

List settings = [
  'Change Password',
  'Change Language',
  'Privacy Policy',
  'Dark Mode',
  'Contact Us',
  'Delete Account'
];

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          'Settings',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: settings.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.textColor2),
                  borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                tileColor: const Color(0xFF35383F),
                title: Text(
                  settings[index],
                  style: const TextStyle(color: AppColor.textColor1),
                ),
                trailing: const Icon(
                  Icons.arrow_forward,
                  color: AppColor.textColor1,
                ),
              ),
            );
          }),
    );
  }
}
