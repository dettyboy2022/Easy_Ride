import 'package:easy_ride/models/onboarding_model.dart';
import 'package:easy_ride/screens/authentication/welcomescreen.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<PageData> data = pageList;
  PageController pages = PageController();
  int currentIndex = 0;

  void goToNextPage() {
    if (currentIndex < pageList.length - 1) {
      pages.nextPage(duration: const Duration(seconds: 1), curve: Curves.ease);
      setState(() {
        currentIndex++;
      });
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                  onPageChanged: (value) {
                    setState(() {
                      buttonText =
                          value == pageList.length - 1 ? 'Get Started' : 'Next';
                      currentIndex = value;
                    });
                  },
                  controller: pages,
                  itemCount: pageList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        AspectRatio(
                            aspectRatio: 10 / 5,
                            child: Image.network(pageList[index].image)),
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
              onPressed: () {
                goToNextPage();
                // pages.animateToPage(currentIndex + 1,
                //     duration: const Duration(microseconds: 1),
                //     curve: Curves.easeIn);
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const WelcomePage()));
              },
              child: Text(buttonText),
            )
          ],
        ),
      ),
    );
  }

  String buttonText = 'Next';

  IconData customIcon = Icons.home;
}
