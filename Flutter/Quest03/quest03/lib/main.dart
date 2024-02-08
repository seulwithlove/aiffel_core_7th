import 'package:flutter/material.dart';

import 'one_screen.dart';
import 'two_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => OneScreen(),
        '/two': (context) => const TwoScreen(),
      },
    );
  }
}



/* KPT - SEUL
 * K : GPT 도움 없이 최대한 책을 기준으로 배운 내용을 바탕으로 코드를 적용해봄
 * P : 상태값을 받아오는 부분에 대한 이해가 완전히 없어서 어디에서 오류가 나는지 알기가 어려웠고, 해결하는 부분에서도 민기님에게 의존할수밖에 없었음
 * T : Navigator, route 에 관련된 부분을 다시 공부해본다.
 */

/* KPT - MINGEE
 * K : 일단 최대한 쌍방향 데이터가 오가도록 구성해보았ㄷ.
 * P : Navigator.pop과 Navigator.pushNamed를 전송하는 방식이 차이나 그 부분을 메꾸기가 굉장히 힘들었다.다
 * T : Navigator.pop으로 전송할 때 따로 클래스를 선언해야 한다는 사실을 나중에 알고 적용해보았다.
 */