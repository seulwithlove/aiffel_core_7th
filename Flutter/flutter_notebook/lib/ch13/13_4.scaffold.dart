/*scaffold를 이용해 appbar, bottomNavigationBar, drawer 등으로 구성된 화면 생성*/

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    // Widget의 elements 만 리스트에 포함됨 => _widgetOptions가 이 속성을 그대로 사용
    const Text(
      'First Screen',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Second Screen',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Third Screen',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Fourth Screen',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(48.0),
              child: Theme(
                data: ThemeData.from(
                  colorScheme:
                      ColorScheme.fromSwatch(accentColor: Colors.white),
                ),
                child: Container(
                    height: 48.0,
                    alignment: Alignment.center,
                    child: const Text('AppBar Bottom Text')),
              ),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/big.jpeg'), fit: BoxFit.fill)),
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
              )
            ]),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          //fixed, shifting
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'First',
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Second',
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Third',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.sentiment_very_satisfied),
                label: 'Fourth',
                backgroundColor: Colors.cyan),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.pink[800],
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {}, //empty funciton
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {}, //empty funciton
              ),
            ],
          ),
        ),
      ),
    );
  }
}
