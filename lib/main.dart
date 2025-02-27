import 'package:flutter/material.dart';
import 'package:hyper_hire_demo/screens/home_screen/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hyper Hire Demo',
      home: DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}