import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<Navigator>();

@override
Widget build(BuildContext context) {
  return Navigator(
    key: navigatorKey,
    pages: [
      MaterialPage(child: HomeScreen(_handleOnPressed)),
      if (selectId != null) MaterialPage(child: DetailScreen(selectId))
    ],
    onPopPage: (route, result) {
      // Remaining code ...
    },
  );
}
