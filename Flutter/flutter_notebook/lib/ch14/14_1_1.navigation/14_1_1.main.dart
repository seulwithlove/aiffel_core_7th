import 'package:flutter/material.dart';

import '14_1_1.four_screen.dart';
import '14_1_1.one_screen.dart';
import '14_1_1.three_screen.dart';
import '14_1_1.two_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => const OneScreen(),
        '/two': (context) => const TwoScreen(),
        '/three': (context) => const ThreeScreen(),
        '/four': (context) => const FourScreen()
      },
    );
  }
}
