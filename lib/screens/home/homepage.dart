import 'package:easy_ride/drawer.dart';
import 'package:easy_ride/screens/notification/notification.dart';
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
              const EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.textColor2,
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
                          color: AppColor.textColor2,
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
                          color: AppColor.textColor2,
                        ),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NotificationPage()));
                            },
                            icon: const Icon(Iconsax.notification)),
                      )
                    ],
                  )
                ],
              ),
              Image.network(
                  'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687895593/easy_ride/Place_Indicate_jqxgwl.png'),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: AppColor.textColor2,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {},
                          child: const Text('Rental')),
                      Container(
                          padding: const EdgeInsets.all(7),
                          color: Colors.grey,
                          child: const Icon(Icons.navigation_rounded))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[600],
                        border: Border.all(color: AppColor.textColor2)),
                    child: Column(
                      children: [
                        TextField(
                          focusNode: FocusScopeNode(),
                          onTap: () {
                            showBottom();
                          },
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Iconsax.search_favorite_14,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    minimumSize: const Size(170, 50)),
                                onPressed: () {},
                                child: const Text('Delivery')),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    minimumSize: const Size(170, 50)),
                                onPressed: () {},
                                child: const Text('Transport'))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  showBottom() async {
    await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey,
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey.shade900,
                  height: 5,
                  width: 100,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Select address',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Iconsax.search_favorite_14,
                              color: Colors.white,
                            ),
                            hintText: 'From',
                            hintStyle: TextStyle(color: AppColor.textColor1),
                            enabledBorder: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.location_city,
                              color: Colors.white,
                            ),
                            hintText: 'To',
                            hintStyle: TextStyle(color: AppColor.textColor1),
                            enabledBorder: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Recent places')
              ],
            ),
          );
        });
  }
}
