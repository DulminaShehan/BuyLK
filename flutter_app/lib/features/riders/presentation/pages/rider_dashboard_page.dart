import 'package:flutter/material.dart';

class RiderDashboardPage extends StatelessWidget {
  const RiderDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rider dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Available deliveries',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    const Text(
                        '4 new pickup requests near your current location'),
                  ]),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              title: const Text('Delivery #2034'),
              subtitle: const Text('Pickup from Seller 1 • Deliver to Buyer 5'),
              trailing:
                  FilledButton(onPressed: () {}, child: const Text('Accept')),
            ),
          ),
        ],
      ),
    );
  }
}
