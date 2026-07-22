import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product details')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Center(child: Icon(Icons.image_outlined, size: 80)),
            ),
            const SizedBox(height: 16),
            Text('Noise Headphones',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 8),
            Text(
                'Premium sound, long battery life, and comfortable fit for all-day listening.',
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.star_rounded, color: Colors.amber),
                const SizedBox(width: 4),
                Text('4.8 • 124 reviews',
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined),
                      label: const Text('Add to cart')),
                ),
                const SizedBox(width: 12),
                IconButton.filled(
                    onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
