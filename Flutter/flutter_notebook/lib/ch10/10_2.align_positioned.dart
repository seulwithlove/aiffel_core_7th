/* 위치 설정 */
/* 특정 위젯을 원하는 위치에 나오고 싶을때 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Stack(
          children: [
            Align(
              alignment: const Alignment(0.0, 0.0), // 가운데 사각형
              child: Container(
                width: 150,
                height: 150,
                color: Colors.deepPurple,
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 50.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const FractionalOffset(1.0, 0.0), // 오른쪽 사각형
              child: Container(
                width: 150,
                height: 150,
                color: Colors.amber,
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 50.0),
                  ),
                ),
              ),
            ),
            Positioned(
              // 왼쪽 사각형
              left: 40.0,
              top: 40.0,
              child: Container(
                color: Colors.pink,
                height: 150.0,
                width: 150.0,
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 50.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
