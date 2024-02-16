// Define a todo class
import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: 'Passing Data',
      home: TodosScreen(
        todos: List.generate(
          20,
          (index) => Todo('Todo $index',
              'A description of what needs to be done for Todo $index'),
        ),
      ),
    ),
  );
}

// Create a Todo screen to display the list
class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key, required this.todos});

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      //passing in the ListView.builder
      // Display the list of todos using a ListView
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen,
            // you're also passing the current todo through to it
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Create a detail screen to display information about a todo
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});

  // Declare a field that holds the Todo
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(todo.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(todo.description),
        ));
  }
}
