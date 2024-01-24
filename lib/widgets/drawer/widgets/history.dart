import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> with TickerProviderStateMixin {
  late TabController tabControll;

  @override
  void initState() {
    tabControll = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          'History',
          style: TextStyle(color: AppColor.textColor1),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: TabBar(
                dividerColor: Colors.transparent,
                labelStyle: const TextStyle(color: AppColor.textColor1),
                unselectedLabelColor: AppColor.textColor1,
                indicatorSize: TabBarIndicatorSize.tab,
                // indicatorColor: AppColor.textColor2,
                controller: tabControll,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColor.textColor2),
                    color: AppColor.textColor2),
                tabs: const [
                  Tab(
                    text: 'Upcoming',
                  ),
                  Tab(
                    text: 'Completed',
                  ),
                  Tab(
                    text: 'Cancelled',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(controller: tabControll, children: [
                ListView.builder(
                    // shrinkWrap: true,
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 5),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side:
                                  const BorderSide(color: AppColor.textColor2)),
                          title: const Text(
                            'Detty Boy',
                            style: TextStyle(color: AppColor.textColor1),
                          ),
                          subtitle: const Text(
                            'G63',
                            style: TextStyle(color: AppColor.textColor1),
                          ),
                          trailing: const Text('Today at 06:44 PM'),
                        ),
                      );
                    }),
                ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 5),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(color: Colors.white)),
                          title: const Text(
                            'Detty Boy',
                            style: TextStyle(color: AppColor.textColor1),
                          ),
                          subtitle: const Text(
                            'G63',
                            style: TextStyle(color: AppColor.textColor1),
                          ),
                          trailing: const Text('Today at 06:44 PM'),
                        ),
                      );
                    }),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading:
                            Text('we go dey definitely jam them for front'),
                      );
                    }),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
