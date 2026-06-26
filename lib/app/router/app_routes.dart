import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:stickory/features/auth/presentation/screens/login_screen.dart';

class AppRoutes {
  static final routes = [
    // Login route - accessible to all users
    GoRoute(path: '/', builder: (context, state) => const LoginScreen()),
    // Home route - requires authentication
    GoRoute(path: '/home', builder: (context, state) => const LoginScreen()),
    // TODO: Add more routes as needed
  ];
}

// Placeholder HomeScreen for initial build
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Stickory - Home')));
  }
}
