import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 35, 34, 34),
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 70,
                  ),
                  Positioned(
                      right: -10,
                      bottom: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.camera),
                      )),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Charles Ayomide',
                style: TextStyle(color: AppColor.textColor1, fontSize: 20),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'charlesayomide@hotmail.com',
                    hintStyle: TextStyle(color: AppColor.textColor1),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                    child: const CountryCodePicker(
                      initialSelection: 'NG',
                      textStyle: TextStyle(color: AppColor.textColor1),
                    ),
                  ),
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.textColor1)),
                child: DropdownButton(
                    padding: const EdgeInsets.all(10),
                    underline: const SizedBox(),
                    style: const TextStyle(color: AppColor.textColor1),
                    isExpanded: true,
                    value: nextValue,
                    items: letters
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        nextValue = value;
                      });
                    }),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: AppColor.textColor1),
                    hintText: 'Address',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomElevated(text: 'Update', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }

  String letter = "Male";
  String? nextValue;

  _ProfileState() {
    nextValue = letters.first;
  }

  List<String> letters = ["Male", "Female", "Other"];
}
