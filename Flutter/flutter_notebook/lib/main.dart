import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp : root widget tree
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp: Material design applied to the Flutter app
    // 출력할 화면 정보를 가진 Widget 객체
    return MaterialApp(
      // Scaffold: Basic layout widget for structuring the app's UI
      home: Scaffold(
          // AppBar: Configures the app bar at the top of the screen
          appBar: AppBar(
            // Text: Displays the title in the app bar
            title: const Text('Test2'),
          ),
          // body: Center widget aligns its child in the center of the screen
          body: Center(
              // GestureDetector: Detects user touch events for interaction
              child: GestureDetector(
            // Text: Displays text in the body of the app
            child: const Text('Goodafternoon!'),
          ))),
    );
  }
}
