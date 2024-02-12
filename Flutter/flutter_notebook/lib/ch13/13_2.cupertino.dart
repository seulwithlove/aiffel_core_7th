/* 플랫폼별로 디자인 적용 */

import 'dart:io'; // 플랫폼 API 구별

import 'package:flutter/cupertino.dart'; // 쿠퍼티노 디자인 적용
import 'package:flutter/material.dart'; // 머터리얼 디자인 적용

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget platformUI() {
    if (Platform.isIOS) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: const CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Cupertinio Title'),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                onPressed: () {},
                child: const Text('click'),
              ),
              const Center(
                child: Text('HelloWolrld'),
              ),
            ],
          ),
        ),
      );
    } else if (Platform.isAndroid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material Title'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () {}, child: const Text('click')),
              const Center(
                child: Text('HelloWolrd'),
              ),
            ],
          ),
        ),
      );
    } else {
      return const Text(
        'unknown Device',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}
