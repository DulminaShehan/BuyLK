import 'package:flutter/material.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: const [
              _StatCard(title: 'Users', value: '3.2k'),
              _StatCard(title: 'Sellers', value: '184'),
              _StatCard(title: 'Riders', value: '42'),
              _StatCard(title: 'Orders', value: '812'),
            ],
          ),
          const SizedBox(height: 16),
          ListTile(
              title: const Text('Manage sellers'),
              trailing: const Icon(Icons.chevron_right)),
          ListTile(
              title: const Text('Manage riders'),
              trailing: const Icon(Icons.chevron_right)),
          ListTile(
              title: const Text('Manage products'),
              trailing: const Icon(Icons.chevron_right)),
          ListTile(
              title: const Text('Coupons'),
              trailing: const Icon(Icons.chevron_right)),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 8),
          Text(value,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700)),
        ]),
      ),
    );
  }
}
