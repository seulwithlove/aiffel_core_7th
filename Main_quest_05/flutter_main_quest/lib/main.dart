import 'package:flutter/material.dart';
import 'package:flutter_main_quest/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hide debug mark on screen
      title: 'ocr demo app'.toUpperCase(),
      // use theme color
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(), // make home screen to HomePage stateful widget
    );
  }
}
