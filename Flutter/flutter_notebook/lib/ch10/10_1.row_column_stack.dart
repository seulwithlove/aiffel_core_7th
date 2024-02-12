/* 방향설정 위젯 활용 */

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
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    width: 50,
                    height: 150,
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              margin: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 50,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    width: 50,
                    height: 150,
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.cyan,
              margin: const EdgeInsets.only(bottom: 5),
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 50,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    width: 50,
                    height: 150,
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.deepOrange,
              margin: const EdgeInsets.only(bottom: 5),
              height: 200,
              child: Stack(
                children: [
                  Container(
                    color: Colors.amber,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
