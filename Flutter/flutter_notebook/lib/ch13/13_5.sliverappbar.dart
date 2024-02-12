import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                leading: IconButton(
                  icon: const Icon(Icons.expand),
                  onPressed: () {},
                ),
                expandedHeight: 200,
                floating: true,
                pinned: true,
                snap: false,
                elevation: 50,
                backgroundColor: Colors.pink,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/big.jpeg'), fit: BoxFit.fill),
                  ),
                ),
                title: const Text('AppBar Title'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.add_alert),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.phone),
                    onPressed: () {},
                  ),
                ]),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Hello World Item $index'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
