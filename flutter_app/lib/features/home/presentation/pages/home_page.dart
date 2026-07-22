import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BuyLK'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome back',
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text('Discover trending products and trusted sellers',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text('Explore',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          Wrap(spacing: 12, runSpacing: 12, children: const [
            _CategoryChip(label: 'Electronics'),
            _CategoryChip(label: 'Fashion'),
            _CategoryChip(label: 'Home'),
            _CategoryChip(label: 'Groceries'),
          ]),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recommended',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w700)),
              TextButton(
                  onPressed: () => context.go('/product'),
                  child: const Text('View all')),
            ],
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.78,
            children: const [
              _ProductCard(title: 'Noise Headphones', price: 'LKR 8,500'),
              _ProductCard(title: 'Leather Wallet', price: 'LKR 3,200'),
              _ProductCard(title: 'Ceramic Lamp', price: 'LKR 4,900'),
              _ProductCard(title: 'Smart Watch', price: 'LKR 12,000'),
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          const NavigationDestination(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(
              icon: IconButton(
                  onPressed: () => context.go('/cart'),
                  icon: const Icon(Icons.shopping_cart_outlined)),
              label: 'Cart'),
          NavigationDestination(
              icon: IconButton(
                  onPressed: () => context.go('/orders'),
                  icon: const Icon(Icons.receipt_long_outlined)),
              label: 'Orders'),
          NavigationDestination(
              icon: IconButton(
                  onPressed: () => context.go('/profile'),
                  icon: const Icon(Icons.person_outline)),
              label: 'Profile'),
        ],
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;
  const _CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
        label: Text(label),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
        side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant));
  }
}

class _ProductCard extends StatelessWidget {
  final String title;
  final String price;
  const _ProductCard({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(16)),
              child: const Center(child: Icon(Icons.image_outlined, size: 48)),
            ),
            const SizedBox(height: 12),
            Text(title,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
            const SizedBox(height: 4),
            Text(price,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
