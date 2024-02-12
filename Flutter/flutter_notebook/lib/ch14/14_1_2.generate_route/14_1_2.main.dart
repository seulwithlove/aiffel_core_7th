import 'package:flutter/material.dart';

import '14_1_2.four_screen.dart';
import '14_1_2.one_screen.dart';
import '14_1_2.three_screen.dart';
import '14_1_2.two_screen.dart';

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
        // '/three': (context) => const ThreeScreen(),
        // '/four': (context) => const FourScreen()
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/three') {
          return MaterialPageRoute(
              builder: (context) => const ThreeScreen(), settings: settings);
        } else if (settings.name == '/four') {
          return MaterialPageRoute(
              builder: (context) => const FourScreen(), settings: settings);
        }
        return null;
      },
    );
  }
}
