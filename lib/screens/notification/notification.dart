import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
              const Text(
                'Today',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        tileColor: Colors.grey.shade50,
                        leading: const Icon(Iconsax.wallet),
                        title: const Text(
                          'Payment Successfully!',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        subtitle: const Text(
                            'lorem ipsum door hwg wfwgdvw wewdcdezxtrcytvuyb srszxdtcfytvuybiu'),
                      ),
                    );
                  }),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Yesterday',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        tileColor: Colors.grey.shade50,
                        leading: const Icon(Iconsax.wallet),
                        title: const Text('Payment Successfully!',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                        subtitle: const Text(
                            'lorem ipsum door hwg wfwgdvw wewdcdezxtrcytvuyb tcfytvuybiu'),
                      ),
                    );
                  }),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'May 27, 2023',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        tileColor: Colors.grey.shade50,
                        leading: const Icon(Iconsax.wallet),
                        title: const Text('Payment Successfully!',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                        subtitle: const Text(
                            'lorem ipsum door hwg wfwgdvw wewdcdezxtrcytvuyb tcfytvuybiu'),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
