import 'package:easy_ride/widgets/constants/app_color.dart';
import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:easy_ride/widgets/constants/reusable/text.dart';
import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 35, 34, 34),
        title: const Text(
          'Special Offer',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColor.textColor2)),
              child: ListTile(
                onTap: showBottom,
                leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColor.backgroundColor,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(100)),
                    child: Image.network(
                        'https://res.cloudinary.com/dxje0rp9f/image/upload/v1691920015/easy_ride/shopping-bag-discount-svgrepo-com_1_l8p12e.png')),
                title: const Text(
                  'Discount 15% off',
                  style: TextStyle(
                    color: AppColor.textColor1,
                  ),
                ),
                subtitle: const Text(
                  'Special Promo valid for Black Friday',
                  style: TextStyle(color: AppColor.textColor1),
                ),
              ),
            );
          }),
    );
  }

  showBottom() async {
    await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5)),
                  height: 5,
                  width: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Special Offer',
                  style: TextStyle(color: AppColor.textColor1, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                    'https://res.cloudinary.com/dxje0rp9f/image/upload/v1691921674/easy_ride/tag-discount-svgrepo-com_1_shmn24.png'),
                const Text(
                  'Discount offer 15%',
                  style: TextStyle(
                      color: AppColor.textColor1,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  'Special Promo valid for Black Friday',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.backgroundColor,
                      borderRadius: BorderRadius.circular(5)),
                  width: 120,
                  height: 50,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'DF67U7',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.card_travel_sharp),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Terms and Conditions',
                        style: TextStyle(
                            color: AppColor.textColor1,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            width: 10,
                            height: 10,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Lorem ipsum dolor sit amet,ua.')
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomElevated(text: 'Use Promo', onPressed: () {})
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
