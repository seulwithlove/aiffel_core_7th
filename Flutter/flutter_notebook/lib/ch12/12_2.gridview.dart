import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> citys = [
    'seoul',
    'incheon',
    'busan',
    'daegu',
    'daejeon',
    'gwangju',
    'woolsan',
    'sejong'
  ];

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: GridView.builder(
          itemCount: citys.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [Text(citys[index]), Image.asset('images/big.jpeg')],
              ),
            );
          },
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        ),
      ),
    );
  }
}
