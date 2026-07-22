import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              title: const Text('Order #1001'),
              subtitle: const Text('Delivered • 2 items'),
              trailing: Chip(
                  label: Text('Completed',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary))),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              title: const Text('Order #1002'),
              subtitle: const Text('On the way • 1 item'),
              trailing: Chip(
                  label: Text('In transit',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary))),
            ),
          ),
        ],
      ),
    );
  }
}
