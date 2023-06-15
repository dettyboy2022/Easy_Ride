import 'package:easy_ride/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<PageData> data = pageList;

  String iconbutton = 'Icon(Icons.navigate_next)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 400,
              child: PageView.builder(
                  itemCount: pageList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        AspectRatio(
                            aspectRatio: 10 / 5,
                            child: Image.asset(pageList[index].image)),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          pageList[index].text,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          pageList[index].subtext,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    );
                  }),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(60, 60),
                    shape: const CircleBorder(),
                    backgroundColor: const Color(0xffFEC400)),
                onPressed: () {},
                child: const Icon(Icons.navigate_next))
          ],
        ),
      ),
    );
  }
}
