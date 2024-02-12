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
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                child: Row(
                  children: <Widget>[
                    Container(
                      color: Colors.lime,
                      width: 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.pink,
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 300,
                child: Row(
                  children: <Widget>[
                    Image.asset('images/lab_instagram_icon_1.jpg'),
                    Image.asset('images/lab_instagram_icon_2.jpg'),
                    Image.asset('images/lab_instagram_icon_3.jpg'),
                    const Spacer(),
                    Image.asset('images/lab_instagram_icon_4.jpg'),
                  ],
                ),
              ),
              Container(
                color: Colors.amber,
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
