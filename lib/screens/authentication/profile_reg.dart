import 'package:easy_ride/screens/authentication/signin.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              const Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  Positioned(bottom: 0, right: 0, child: Icon(Iconsax.camera))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Full Name', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Your Mobile number',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Email', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Street', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'City', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'District', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: const Text('Cancel')),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: AppColor.backgroundColor),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignIn()));
                      },
                      child: const Text('Save'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
