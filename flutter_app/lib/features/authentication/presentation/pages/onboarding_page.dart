import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Spacer(),
              Icon(Icons.storefront_outlined,
                  size: 96, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 24),
              Text(
                'Discover curated products from trusted sellers',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              Text(
                'Fast delivery, secure payments, and a premium shopping experience built for Sri Lanka.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Spacer(),
              FilledButton.icon(
                onPressed: () => context.go('/login'),
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                label: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
