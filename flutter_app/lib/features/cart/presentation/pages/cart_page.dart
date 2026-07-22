import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading:
                  const CircleAvatar(child: Icon(Icons.shopping_bag_outlined)),
              title: const Text('Noise Headphones'),
              subtitle: const Text('Qty 1 • LKR 8,500'),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.delete_outline)),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('Subtotal'), Text('LKR 8,500')]),
                  const SizedBox(height: 8),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('Shipping'), Text('LKR 300')]),
                  const SizedBox(height: 8),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        Text('LKR 8,800',
                            style: TextStyle(fontWeight: FontWeight.w700))
                      ]),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
              onPressed: () {}, child: const Text('Proceed to checkout')),
        ],
      ),
    );
  }
}
