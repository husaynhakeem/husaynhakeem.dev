import 'package:flutter/material.dart';

import 'page/pages.dart';

class NavigationService {
  static const String route_home = '/';
  static const String route_articles = '/articles';
  static final GlobalKey<NavigatorState> navigationKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case route_home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => HomePage(),
        );
      case route_articles:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ArticlesPage(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => HomePage(),
        );
    }
  }

  static void openHomePage() {
    navigationKey.currentState.pushNamed(route_home);
  }

  static void openArticlesPage() {
    navigationKey.currentState.pushNamed(route_articles);
  }
}
