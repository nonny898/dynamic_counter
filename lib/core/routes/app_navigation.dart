import 'package:flutter/cupertino.dart';

class AppNavigation {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> push(String routeName, {Object? params}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: params);
  }
}
