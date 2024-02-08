import 'package:flutter/material.dart';

import 'is_cat.dart';

class OneScreen extends StatelessWidget {
  OneScreen({super.key});
  IsCat isCat = IsCat(true);

  @override
  Widget build(BuildContext context) {
    // print('뽀뽀:${isCat.is_cat}');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.star),
          title: const Text(
            'First Page',
            style: TextStyle(fontWeight: FontWeight.bold),
          ), //Text
        ), //AppBar
        body: Container(
          color: Colors.pink,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    isCat.is_cat = false;
                    final result = await Navigator.pushNamed(context, '/two',
                        arguments: isCat);
                    print('뽀뽀:${(result as IsCat).is_cat}'); // 되나요?
                  },
                  // 버튼 크기 조정
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50)),
                  // const ButtonStyle(
                  //   minimumSize: MaterialStatePropertyAll(Size(100, 100)),     // 이 방법은 실패 - 위에 style로 적
                  // ),
                  child: const Text(
                    'Next',
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
                  image: AssetImage('images/ppoppo.png'),
                  fit: BoxFit.contain,
                ), //Image
              ), //SizedBox
              // 아래 빈공간 추가
              Container(
                height: 50,
              ), //Container
            ],
          ), //Column
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
