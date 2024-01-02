import 'package:easy_ride/models/available_cars_model.dart';
import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CarDetails extends StatefulWidget {
  final AvailableCars carInfo;
  const CarDetails({super.key, required this.carInfo});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  final PageController _pageController = PageController(initialPage: 0);
  List images = [
    'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_3_gclcit.png',
    'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689263580/easy_ride/image_5_q9dptd.png',
    'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_4_c7am4j.png',
    // Add more image URLs
  ];
  void _previousPage() {
    _pageController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void _nextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: widget.carInfo.car),
              const Row(
                children: [
                  Icon(
                    Iconsax.star_15,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '4.9 (531 reviews)',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: _previousPage,
                        icon: const Icon(
                          Icons.navigate_before,
                          color: AppColor.textColor1,
                        )),
                  ),
                  Expanded(
                    flex: 8,
                    child: SizedBox(
                      height: 250,
                      width: 300,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Image.network(
                              images[index],
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: _nextPage,
                        icon: const Icon(
                          Icons.navigate_next,
                          color: AppColor.textColor1,
                        )),
                  ),
                ],
              ),
              const Text(
                'Specifications',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: specifications
                    .map((e) => Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade600,
                          ),
                          child: Column(
                            children: [
                              Icon(e[IconData]),
                              Text(
                                e['text'],
                                style: const TextStyle(
                                    color: AppColor.textColor1, fontSize: 16),
                              ),
                              Text(
                                e['subtext'],
                                style:
                                    const TextStyle(color: AppColor.textColor1),
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Car features',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: features.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        tileColor: Colors.grey.shade600,
                        title: Text(
                          features[index]['feat'],
                          style: const TextStyle(color: AppColor.textColor1),
                        ),
                        trailing: Text(
                          features[index]['feats'],
                          style: const TextStyle(
                              fontSize: 13, color: AppColor.textColor1),
                        ),
                      ),
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(
                              width: 2, color: AppColor.textColor2),
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: const Text('Book Later')),
                  const SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: AppColor.textColor2,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: const Text('Ride Now'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List specifications = [
  {IconData: Icons.battery_5_bar, 'text': 'Max.Power', 'subtext': '2500hp'},
  {IconData: Icons.gas_meter, 'text': 'Fuel', 'subtext': '10km per litre'},
  {IconData: Icons.speed, 'text': 'Max.Speed', 'subtext': '230kph'},
  {IconData: Icons.engineering, 'text': '0-60mph', 'subtext': '2.5sec'},
];

List features = [
  {'feat': 'Model', 'feats': 'GT5000'},
  {'feat': 'Capacity', 'feats': '760hp'},
  {'feat': 'Color', 'feats': 'Red'},
  {'feat': 'Fuel type', 'feats': 'Octane'},
  {'feat': 'Gear type', 'feats': 'Automatic'},
];
