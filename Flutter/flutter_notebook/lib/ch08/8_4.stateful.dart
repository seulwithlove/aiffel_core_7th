// ignore_for_file: prefer_const_constructors

// Importing the material library from Flutter,
// which provides widgets for implementing Material Design
import 'package:flutter/material.dart';

void main() {
  // runApp function takes the given widget (MyApp)
  // and starts the Flutter application
  runApp(MyApp());
}

// MyApp class, a StatelessWidget representing the entire application structure
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp provides basic app structure with Material Design
    return MaterialApp(
      // Scaffold defines the layout
      home: Scaffold(
        // AppBar is the top bar
        appBar: AppBar(
          title: Text('Stateful Test'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

// MyWidget class, a StatefulWidget with its associated state class _MyWidgetState
class MyWidget extends StatefulWidget {
  @override
  // createState method creates and returns the state associated with this widget
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}

// State variables to manage the state of the widget
class _MyWidgetState extends State<MyWidget> {
  bool enabled = false;
  String stateText = "disable";

  // changeCheck method toggles the 'enabled' state and updates the 'stateText' accordingly
  void changeCheck() {
    // setState is used to update the UI when the state changes
    setState(() {
      if (enabled) {
        stateText = "disable";
        enabled = false;
      } else {
        stateText = "enable";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Center widget aligns its child in the center of the screen
    return Center(
      // Row widget arranges its children in a horizontal row, centering them
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // IconButton is a button with an icon, its appearance changes based on the 'enabled' state
          IconButton(
            icon: (enabled
                ? Icon(
                    Icons.check_box,
                    size: 20,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    size: 20,
                  )),
            color: Colors.amber,
            onPressed: changeCheck,
          ),
          // Container widget allows customization of its child's appearance and layout
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              stateText,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
