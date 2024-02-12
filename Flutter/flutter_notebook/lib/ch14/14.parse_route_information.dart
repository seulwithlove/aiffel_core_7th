import 'package:flutter/material.dart';

@override
Future<MyRoutePath> parseRouteInformation(
    RouteInformation routeInformation) async {
  final uri = Uri.parse(routeInformation.location ?? '/');
  print(routeInformation.location : ${routeInformation.location}');
  if (uri.pathSegemnts.length >= 2) {
    var remaining = uri.pathSegments[1];
    return MyRoutePath.detail(remaining);
  } else {
    return MyRoutePath.home();
  }
}

