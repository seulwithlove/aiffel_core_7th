import 'package:flutter/material.dart'; // Import the material package for Flutter UI components

// Entry point of the application
void main() {
  runApp(const MainApp()); // Call the MainApp widget to run the app
}

// MainApp class, statefulwidget which means it can hold state and update UI accordingly
class MainApp extends StatefulWidget {
  const MainApp({super.key}); // Constructor for the MainApp widget

  @override
  // Create state for the MainApp widget
  State<StatefulWidget> createState() => _MainAppState();
}

// State class for the MainApp widget
class _MainAppState extends State<MainApp> {
  @override
  // Build method to construct the UI of the widget
  Widget build(BuildContext context) {
    // MaterialApp widget with a router for managing navigation
    return MaterialApp.router(
      // Set the router delegate for navigation
      routerDelegate: MyRouterDelegate(),
      // Set the route information parser
      routeInformationParser: MyRouteInformationParser(),
    );
  }
}

// Class for defining different paths in the app
class MyRoutePath {
  String? id; // Identifier for the path

  MyRoutePath.home() : id = null; // Constructor for the home path

  MyRoutePath.detail(this.id); // Constructor for the detail path with an ID
}

// Class for parsing route information
class MyRouteInformationParser extends RouteInformationParser<MyRoutePath> {
  @override
  Future<MyRoutePath> parseRouteInformation(
      // Method to parse route information
      RouteInformation routeInformation) async {
    // Parse the URI from the route information
    final uri = Uri.parse(routeInformation.location);
    // Check if there are at least 2 path segments
    if (uri.pathSegments.length >= 2) {
      var remaining = uri.pathSegments[1]; // Get the second path segment
      return MyRoutePath.detail(
          remaining); // Return a detail path with the remaining segment
    } else {
      // Return a home path if there are less than 2 path segments
      return MyRoutePath.home();
    }
  }

  // Method to restore route information
  RouteInformation restoreRouteInformaiton(MyRoutePath configuration) {
    // Check if the configuration has an ID
    if (configuration.id != null) {
      // Return route information for detail path
      return RouteInformation(location: '/detail/${configuration.id}');
    } else {
      // Return route information for home path
      return const RouteInformation(location: '/');
    }
  }
}

// Class for managing navigation
// // Mixin classes for change notification and navigation stack management
class MyRouterDelegate extends RouterDelegate<MyRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRoutePath> {
  String? selectId; // Selected ID for detail screen

  @override
  // Global key for managing the navigator state
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  // Get the current navigation configuration
  MyRoutePath get currentConfiguration {
    // Check if an ID is selected
    if (selectId != null) {
      // Return a detail path with the selected ID
      return MyRoutePath.detail(selectId);
    } else {
      // Return a home path if no ID is selected
      return MyRoutePath.home();
    }
  }

  @override
  // Build method to construct the UI based on the current configuration
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey, // Set the navigator key
      pages: [
        // Add a page for the home screen
        MaterialPage(child: HomeScreen(_handleOnpressed)),
        // Add a page for the detail screen if an ID is selected
        if (selectId != null) MaterialPage(child: DetailScreen(selectId))
      ],
      // Callback for popping a page from the navigation stack
      onPopPage: (route, result) {
        // Check if the page was popped successfully
        if (!route.didPop(result)) {
          return false; // Return false to indicate that the pop operation failed
        }
        selectId = null; // Reset the selected ID
        notifyListeners(); // Notify listeners of the state change
        return true; // Return true to indicate that the pop operation was successful
      },
    );
  }

  @override
  // Method to set a new route path
  Future<void> setNewRoutePath(MyRoutePath configuration) async {
    // Check if the configuration has an ID
    if (configuration.id != null) {
      selectId = configuration.id; // Set the selected ID
    }
  }

  // Callback method for handling button presses
  void _handleOnpressed(String id) {
    selectId = id;
    notifyListeners(); // Notify listeners of the state change
  }
}

// Widget for the home screen
class HomeScreen extends StatelessWidget {
  final ValueChanged<String> onPressed; // Callback for button presses

  // Constructor for the HomeScreen widget
  const HomeScreen(this.onPressed, {super.key});

  @override
  // Build method to construct the UI of the widget
  Widget build(BuildContext context) {
    // Scaffold widget for the basic layout structure
    return Scaffold(
      appBar: AppBar(), // App bar for the top of the screen
      // Container widget for the main content
      body: Container(
        color: Colors.pink,
        // Center widget for centering child widgets
        child: Center(
          // Column widget for arranging child widgets vertically
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text widget for displaying static text
              const Text(
                'Home Screen',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              // ElevatedButton widget for creating a clickable button
              ElevatedButton(
                child: const Text('go detail with 1'),
                onPressed: () => onPressed('1'),
              ),
              // ElevatedButton widget for creating another clickable button
              ElevatedButton(
                child: const Text('go detail with 2'),
                onPressed: () => onPressed('2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget for the detail screen
class DetailScreen extends StatelessWidget {
  String? id; // ID for the detail screen

  DetailScreen(this.id, {super.key}); // Constructor for the DetailScreen widget

  @override
  // Build method to construct the UI of the widget
  Widget build(BuildContext context) {
    // Scaffold widget for the basic layout structure
    return Scaffold(
      // App bar for the top of the screen
      appBar: AppBar(),
      // Container widget for the main content
      body: Container(
        color: Colors.cyan,
        // Center widget for centering child widgets
        child: Center(
          // Text widget for displaying dynamic text
          child: Text(
            'Detail Screen $id',
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
