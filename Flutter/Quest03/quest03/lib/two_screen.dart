import 'package:flutter/material.dart';

import 'is_cat.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    IsCat isCat = ModalRoute.of(context)?.settings.arguments as IsCat;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.star_border_outlined),
          title: const Text(
            'Second Page',
            style: TextStyle(fontWeight: FontWeight.bold),
          ), //Text
        ), //AppBar
        body: Container(
          color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,         // 이 코드로는 실패 - Center위젯을 넣어서 정렬 맞춤
            // decoration: const BoxDecoration(color: Colors.green),  // Container 위젯을 넣어서 필요없는 기능 주석처리
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    // 변수를 변경해서 이전 화면으로 전달
                    isCat.is_cat = true;
                    print('뽀뽀:${isCat.is_cat}');
                    Navigator.pop(context, isCat);
                    // final result = Navigator.pop(context, isCat);
                    // print('뽀뽀:$result');
                  },
                  // 버튼 크기 조정
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50)),
                  child: const Text(
                    'Back',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ), //TextStyle
                  ), //Text
                ), //ElevatedButton
              ), //Center
              const SizedBox(
                width: 300,
                height: 300,
                child: Image(
                  image: AssetImage('images/bonggu.jpg'),
                  fit: BoxFit.contain,
                ), //Image
              ), //SizedBox
              Container(
                height: 50,
              ), //Container
            ],
          ), // Column
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
