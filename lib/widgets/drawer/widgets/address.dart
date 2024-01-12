import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          'Address',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(10),
              child: const ListTile(
                tileColor: Color(0xFF35383F),
                leading: Icon(
                  Icons.location_disabled,
                  color: AppColor.textColor1,
                ),
                title: Text(
                  'Office',
                  style: TextStyle(color: AppColor.textColor1),
                ),
                subtitle: Text(
                  '2972 Westheimer Rd, Santa Ana, Illinois 85486',
                  style: TextStyle(color: AppColor.textColor1),
                ),
                trailing: Icon(
                  Icons.edit,
                  color: AppColor.textColor1,
                ),
              ),
            );
          }),
    );
  }
}
