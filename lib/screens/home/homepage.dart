import 'package:easy_ride/drawer.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687770781/easy_ride/Map_wbfwmd.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.backgroundColor,
                    ),
                    child: IconButton(
                        onPressed: () {
                          return _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Iconsax.menu_1,
                        )),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.backgroundColor,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.search_favorite)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.backgroundColor,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.notification)),
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: AppColor.backgroundColor,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {},
                      child: const Text('Rental')),
                  const Icon(Icons.navigation_rounded)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[600],
                    border: Border.all(color: AppColor.backgroundColor)),
                child: const Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.search_favorite4,
                            color: Colors.white,
                          ),
                          suffixIcon: Icon(
                            Iconsax.lovely,
                            color: Colors.white,
                          ),
                          hintText: 'Where would you go?',
                          hintStyle: TextStyle(color: AppColor.textColor1),
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}