import 'package:flutter/material.dart';
import 'package:pumpskin_lica/page/page.dart';

import 'screen_arguments.dart';
import 'slide_left_route.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    late ScreenArguments arg;
    final Object? arguments = settings.arguments;
    if (arguments != null) {
      arg = arguments as ScreenArguments;
    }
    switch (settings.name) {
      case HomePage.routeName:
        return SlideLeftRoute(const HomePage());
      default:
        throw ('this route name does not exist');
    }
  }
}
