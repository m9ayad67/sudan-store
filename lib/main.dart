import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const SudanStore());
}

class SudanStore extends StatelessWidget {
  const SudanStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'متجر السودان',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
