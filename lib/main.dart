import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const SudanStoreApp());
}

class SudanStoreApp extends StatelessWidget {
  const SudanStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SUDAN STORE',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF087443),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
