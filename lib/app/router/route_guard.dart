import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class RouteGuard {
  static bool canAccessRoute(GoRouterState state, Map<String, dynamic> userData) {
    final String path = state.matchedLocation;

    // Public routes
    final publicRoutes = ['/', '/login', '/signup', '/splash'];

    if (publicRoutes.contains(path)) {
      return true; // Allow public access
    }

    // Protected routes require authentication
    if (!userData.containsKey('isAuthenticated') || !userData['isAuthenticated']) {
      return false; // Block unauthenticated access
    }

    // Additional role-based checks can be added here
    return true;
  }
}