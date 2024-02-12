import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  PageController controller =
      PageController(initialPage: 1, viewportFraction: 0.8); // viewportFraction : 현재 페이지에 보일 화면의 비율

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: PageView(
          controller: controller,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.cyan,
              child: const Center(
                child: Text(
                  'OnePage',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.green,
              child: const Center(
                child: Text(
                  'TwoPage',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'ThreePage',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
