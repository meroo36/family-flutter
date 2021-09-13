import 'package:flutter/material.dart';

import '../../../views/home/home_screen.dart';
import '../../constants/constants_shelf.dart';
import '../../core_shelf.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  var localManager = LocaleManager.prefrencesInit();
  NavigationRoute._init();

  Route<dynamic> generateRouteLoggedIn(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.home:
        return normalNavigate(HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
