import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class User {
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatelessWidget {
  List<User> users = [
    User('seul', '0100001', 'a@a.com'),
    User('jin', '0100002', 'b@a.com'),
    User('seul', '0100003', 'c@a.com'),
    User('jin', '0100004', 'd@a.com'),
    User('seul', '0100001', 'a@a.com'),
    User('jin', '0100002', 'b@a.com'),
    User('seul', '0100003', 'c@a.com'),
    User('jin', '0100004', 'd@a.com'),
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: ListView.separated(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('images/big.jpeg'),
              ),
              title: Text(users[index].name),
              subtitle: Text(users[index].phone),
              trailing: const Icon(Icons.more_vert),
              onTap: () {
                print(users[index].name);
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 2,
              color: Colors.black,
            );
          },
        ),
      ),
    );
  }
}
