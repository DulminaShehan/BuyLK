import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create account')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Join BuyLK',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 8),
              Text('Create a buyer, seller, rider, or admin account',
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 24),
              const TextField(
                  decoration: InputDecoration(
                      labelText: 'Full name', border: OutlineInputBorder())),
              const SizedBox(height: 16),
              const TextField(
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder())),
              const SizedBox(height: 16),
              const TextField(
                  decoration: InputDecoration(
                      labelText: 'Phone', border: OutlineInputBorder())),
              const SizedBox(height: 16),
              const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder())),
              const SizedBox(height: 24),
              FilledButton(
                  onPressed: () => context.go('/home'),
                  child: const Text('Create account')),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                      onPressed: () => context.go('/login'),
                      child: const Text('Log in')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
