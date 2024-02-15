import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

// 이미지
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result1 = "";
  String result2 = "";
  // TextEditingController urlController =
  //     TextEditingController(); // URL을 입력 받는 컨트롤러

  Future<void> fetchData() async {
    try {
      const enteredUrl =
          'https://83f8-34-168-171-13.ngrok-free.app/'; // URL 가져오기
      final response = await http.get(
        Uri.parse("${enteredUrl}sample"), // URL 사용
        headers: {
          'Content-Type': 'application/json',
          'ngrok-skip-browser-warning': '69420',
        },
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          result1 = "predicted_label: ${data['predicted_label']}";
          result2 = "max_probability: ${data['max_probability']}";
        });
      } else {
        setState(() {
          result1 = "Failed to fetch data. Status Code: ${response.statusCode}";
          result2 = "Failed to fetch data. Status Code: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        result1 = "Error: $e";
        result2 = "Error: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jellyfish Classifier'),
        leading: const Icon(Icons.dangerous_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 이미지
            Image.asset(
              'images/jellyfish.jpeg',
              width: 300,
              height: 300,
            ),
            // Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    fetchData();
                    print(result1);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  child: const Text('예측 결과 버튼'),
                ),
                // 결과값 디버그 콘솔에 출력 시도 - 실패
                // Text(
                //   result,
                //   style: const TextStyle(fontSize: 18),
                // ),
                const SizedBox(width: 18),
                ElevatedButton(
                  onPressed: () {
                    fetchData();
                    print(result2);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                  child: const Text('예측 확률 버튼'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Text(
                  result1,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  result2,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
