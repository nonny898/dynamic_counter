import 'package:dynamic_counter/core/routes/app_route.dart';
import 'package:dynamic_counter/features/counter/screens/main.dart';
import 'package:flutter/cupertino.dart';

CupertinoPageRoute<dynamic> _getRoute(String routeName, Widget page) {
  return CupertinoPageRoute(
    builder: (BuildContext context) => page,
    settings: RouteSettings(name: routeName),
  );
}

Route routeBuilder(RouteSettings settings) {
  switch (settings.name) {
    case AppRoute.home:
      return _getRoute(AppRoute.home, CounterScreen());
    case AppRoute.favorite:
      return _getRoute(AppRoute.home, CounterScreen());
    case AppRoute.settings:
      return _getRoute(AppRoute.home, CounterScreen());
    default:
      return _getRoute(AppRoute.home, CounterScreen());
  }
}
