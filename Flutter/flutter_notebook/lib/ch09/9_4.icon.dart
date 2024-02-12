import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  onPressed() {
    print('icon button click....');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Column(
          children: [
            const Icon(Icons.alarm, size: 100, color: Colors.pink),
            const FaIcon(
              FontAwesomeIcons.bell,
              size: 100,
            ),
            IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.alarm,
                size: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
