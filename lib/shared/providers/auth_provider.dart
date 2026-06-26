import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthState {
  final bool isAuthenticated;
  final String? userId;
  final String? email;
  final Map<String, dynamic>? userData;
  final String? errorMessage;
  final bool isLoading;

  const AuthState({
    this.isAuthenticated = false,
    this.userId,
    this.email,
    this.userData,
    this.errorMessage,
    this.isLoading = false,
  });

  AuthState copyWith({
    bool? isAuthenticated,
    String? userId,
    String? email,
    Map<String, dynamic>? userData,
    String? errorMessage,
    bool? isLoading,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      userId: userId ?? this.userId,
      email: email ?? this.email,
      userData: userData ?? this.userData,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState()) {
    _initializeAuth();
  }

  Future<void> _initializeAuth() async {
    // TODO: Initialize from shared preferences or secure storage
    // Start with unauthenticated state for now
  }

  Future<void> login({required String email, required String password}) async {
    try {
      // Simple validation - replace with real validation
      if (email.isEmpty || password.isEmpty) {
        throw Exception('Email and password cannot be empty');
      }

      // Show loading state
      state = state.copyWith(isLoading: true, errorMessage: null);

      // Simulate network call - replace with real API call
      await Future.delayed(const Duration(seconds: 2));

      // Mock successful login
      state = state.copyWith(
        isAuthenticated: true,
        userId: 'user_123',
        email: email,
        userData: {
          'name': 'John Doe',
          'photoURL': 'https://example.com/photo.jpg',
        },
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isAuthenticated: false,
        errorMessage: e.toString(),
        isLoading: false,
      );
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      state = const AuthState(isLoading: true);

      // Simulate network call
      await Future.delayed(const Duration(seconds: 1));

      state = const AuthState(
        isAuthenticated: false,
        userId: null,
        email: null,
        userData: null,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString(), isLoading: false);
      rethrow;
    }
  }

  Future<void> loginWithGoogle() async {
    try {
      state = state.copyWith(isLoading: true, errorMessage: null);

      // Simulate Google login
      await Future.delayed(const Duration(seconds: 2));

      state = state.copyWith(
        isAuthenticated: true,
        userId: 'google_user_456',
        email: 'user@gmail.com',
        userData: {
          'name': 'Google User',
          'photoURL': 'https://example.com/google_photo.jpg',
          'provider': 'google',
        },
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isAuthenticated: false,
        errorMessage: e.toString(),
        isLoading: false,
      );
      rethrow;
    }
  }

  Future<void> loginWithFacebook() async {
    try {
      state = state.copyWith(isLoading: true, errorMessage: null);

      // Simulate Facebook login
      await Future.delayed(const Duration(seconds: 2));

      state = state.copyWith(
        isAuthenticated: true,
        userId: 'facebook_user_789',
        email: 'user@facebook.com',
        userData: {
          'name': 'Facebook User',
          'photoURL': 'https://example.com/facebook_photo.jpg',
          'provider': 'facebook',
        },
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isAuthenticated: false,
        errorMessage: e.toString(),
        isLoading: false,
      );
      rethrow;
    }
  }

  bool get isAuthenticated => state.isAuthenticated;
  String? get userId => state.userId;
  String? get email => state.email;
  Map<String, dynamic>? get userData => state.userData;
  String? get errorMessage => state.errorMessage;
  bool get isLoading => state.isLoading;
}

// Auth provider
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});

// For backward compatibility
final authProviderNotifier = authProvider;
