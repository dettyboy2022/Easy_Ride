import 'package:easy_ride/widgets/constants/reusable/elevatedbutton.dart';
import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class Complain extends StatefulWidget {
  const Complain({super.key});

  @override
  State<Complain> createState() => _ComplainState();
}

String selectedValue = 'Vehicle not clean enough';

List<String> dropdownItems = [
  'Vehicle not clean enough',
  'Option 2',
  'Option 3',
  'Option 4'
];

class _ComplainState extends State<Complain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          'Complain',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.textColor1)),
                    child: DropdownButton<String>(
                      padding: const EdgeInsets.all(5),
                      elevation: 8,
                      underline: Container(),
                      dropdownColor: Colors.black,
                      isExpanded: true,
                      value: selectedValue,
                      onChanged: (newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems.map((item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(color: AppColor.textColor1),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.textColor1)),
                  border: OutlineInputBorder(),
                  hintText: "Write your complain here.",
                  hintStyle: TextStyle(color: AppColor.textColor1)),
              maxLength: 200,
              maxLines: 5,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomElevated(text: 'Submit', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
