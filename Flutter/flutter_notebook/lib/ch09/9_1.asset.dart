import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // asset 이용을 위한 rootBundle 제공

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // useRootBundle() : rootBundle을 이용해서 asset 파일을 읽고 return
  // Future : 비동기데이터를 의미
  Future<String> useRootBundle() async {
    return await rootBundle.loadString('assets/text/my_text.txt');
  }

  // useDefaultAssetBundle() : DefaultAssetBundle을 이용해서 asset 파일 읽고 return
  Future<String> useDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(
          children: [
            Image.asset('images/icon.jpg'),
            Image.asset('images/icon/user.png'),
            // FutrueBuilder : 비동기 데이터를 이용해 화면을 구성하는 위젯
            FutureBuilder(
                future: useRootBundle(), // useRootBundle() 호출
                builder: (context, snapshot) {
                  // 호출 결과값이 snapshot에 전달- 이 값으로 화면 구성
                  return Text('rootBundle : ${snapshot.data}');
                }),
            FutureBuilder(
                future: useDefaultAssetBundle(
                    context), // useDefaultAssetBundle() 호출
                builder: (context, snapshot) {
                  // 호출 결과값이 snapshot에 전달- 이 값으로 화면 구성
                  return Text('DefaultAssetBundle : ${snapshot.data}');
                })
          ],
        ),
      ),
    );
  }
}
