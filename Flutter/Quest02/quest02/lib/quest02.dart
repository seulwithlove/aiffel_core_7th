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
          // 상단 앱바 디자인
          title: const Text('플러터 앱 만들기'),
          centerTitle: true,
          elevation: 0.0,
          leading: const Icon(
            // 아이콘 디자인
            Icons.favorite,
            size: 50,
            color: Colors.pink,
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print("버튼이 눌렸습니다.");
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: const Text(
                  'Text',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 90),
                // padding: const EdgeInsets.only(top: 20),  // 패딩으로 스택 사각형들과 텍스트 버튼을 가운데 지점으로 놓으려고 시도했으나 변경
                // 정사각형 담는 틀
                child: Stack(
                  children: [
                    // 바깥 사각형
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.pink,
                    ),
                    // 안쪽에서 네번째 사각형
                    Container(
                      width: 240,
                      height: 240,
                      color: Colors.pink.shade100,
                    ),
                    // 안쪽에서 세번째 사각형
                    Container(
                      width: 180,
                      height: 180,
                      color: Colors.pink.shade200,
                    ),
                    // 안쪽에서 두번째 사각형
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.pink.shade300,
                    ),
                    // 가장 안쪽 사각형
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.pink.shade400,
                    ), //Container
                  ],
                ), //Stack
              ) //Container
            ], //<Widget>[]
          ), //Column
        ), //Center
      ), //Scaffold
    ); //MaterialApp
  }
}

/********회고 KPT*********/
/**강훈
* Keep: 
* - 문제가 주어지자마자 노트에 설계를 하였음
*
* Problem: 
* - 노트북을 처음 사용해서 키보드가 매우 불편하였음
* - 가운데 정렬이 안되고 자꾸 좌측으로 붙었던 점
* Try:
* - 정은 퍼실님께 키보드를 달라고하여서 작업 효율 2배 키크론 아주 좋았습니다.
* - Stack을 Container에 하위로 정해서 Center로 Align을 Center로 지정하여서
* - 가운데 정렬을 진행 하였음
**/

/**슬
 * Keep: 
 * - 강훈님이 설계를 잘 하셔서 문제를 이해하고 풀이하는데 큰 어려움이 없었음
 *  - 설계가 중요하다는 점을 다시 한번 느낌
 * 
 * Problem:
 * - Stack과 Container, child 개념이 제대로 되어있지 않아서 정렬을 하는데 어려웠음
 * 
 * Try:
 * - Stack을 Container로 묶을수 있는 점을 확인해서 컨테이너로 묶음
 **/