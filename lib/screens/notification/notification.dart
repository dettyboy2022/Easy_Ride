import 'package:easy_ride/widgets/constants/reusable/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Today'),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              tileColor: Colors.grey.shade50,
              leading: const Icon(Iconsax.wallet),
              title: const Text('Payment Successfully!'),
              subtitle: const Text(
                  'lorem ipsum door hwg wfwgdvw wewdcdezxtrcytvuyb srszxdtcfytvuybiu'),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              tileColor: Colors.grey.shade50,
              leading: const Icon(Iconsax.wallet),
              title: const Text('Payment Successfully!'),
              subtitle: const Text(
                  'lorem ipsum door hwg wfwgdvw wewdcdezxtrcytvuyb srszxdtcfytvuybiu'),
            )
          ],
        ),
      ),
    );
  }
}
