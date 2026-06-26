import 'package:flutter/material.dart';
import 'app/app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Stickory',
      theme: App.lightTheme,
      darkTheme: App.darkTheme,
      routerConfig: App.appRouter,
    );
  }
}