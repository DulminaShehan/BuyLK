import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:buylk/features/admin/presentation/pages/admin_dashboard_page.dart';
import 'package:buylk/features/authentication/presentation/pages/login_page.dart';
import 'package:buylk/features/authentication/presentation/pages/onboarding_page.dart';
import 'package:buylk/features/authentication/presentation/pages/register_page.dart';
import 'package:buylk/features/authentication/presentation/pages/splash_page.dart';
import 'package:buylk/features/cart/presentation/pages/cart_page.dart';
import 'package:buylk/features/home/presentation/pages/home_page.dart';
import 'package:buylk/features/orders/presentation/pages/orders_page.dart';
import 'package:buylk/features/products/presentation/pages/product_detail_page.dart';
import 'package:buylk/features/profile/presentation/pages/profile_page.dart';
import 'package:buylk/features/riders/presentation/pages/rider_dashboard_page.dart';
import 'package:buylk/features/sellers/presentation/pages/seller_dashboard_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => const SplashPage()),
      GoRoute(
          path: '/onboarding',
          builder: (context, state) => const OnboardingPage()),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(
          path: '/register', builder: (context, state) => const RegisterPage()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(
          path: '/product',
          builder: (context, state) => const ProductDetailPage()),
      GoRoute(path: '/cart', builder: (context, state) => const CartPage()),
      GoRoute(path: '/orders', builder: (context, state) => const OrdersPage()),
      GoRoute(
          path: '/profile', builder: (context, state) => const ProfilePage()),
      GoRoute(
          path: '/seller-dashboard',
          builder: (context, state) => const SellerDashboardPage()),
      GoRoute(
          path: '/rider-dashboard',
          builder: (context, state) => const RiderDashboardPage()),
      GoRoute(
          path: '/admin-dashboard',
          builder: (context, state) => const AdminDashboardPage()),
    ],
  );
});
