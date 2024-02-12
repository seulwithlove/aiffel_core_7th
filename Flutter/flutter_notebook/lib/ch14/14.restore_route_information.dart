import 'package:flutter/material.dart';

@override
RouteInformation restoreRouteInformation(MyRoutePath configuration) {
  print('restoreRouteInformation.. id : ${configuration.id}');

  if (configuration.id != null)
    return RouteInformation(location: '/detail/${configuration.id}');
  else
    return RouteInformation(location: '/');
}
