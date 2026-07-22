import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 34,
                      child: Text('AK',
                          style: Theme.of(context).textTheme.titleLarge)),
                  const SizedBox(height: 12),
                  Text('Ayesha K.',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w700)),
                  Text('ayesha@example.com',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
              leading: const Icon(Icons.favorite_outline),
              title: const Text('Wishlist'),
              trailing: const Icon(Icons.chevron_right)),
          ListTile(
              leading: const Icon(Icons.location_on_outlined),
              title: const Text('Saved addresses'),
              trailing: const Icon(Icons.chevron_right)),
          ListTile(
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('Notifications'),
              trailing: const Icon(Icons.chevron_right)),
          ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              trailing: const Icon(Icons.chevron_right)),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.logout), title: const Text('Logout')),
        ],
      ),
    );
  }
}
