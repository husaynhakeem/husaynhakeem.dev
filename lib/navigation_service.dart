import 'package:flutter_web/material.dart';
import 'page/pages.dart';

class NavigationService {
  static const String route_home = "/";
  static const String route_articles = "/articles";
  static final GlobalKey<NavigatorState> navigationKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case route_home:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case route_articles:
        return MaterialPageRoute(
          builder: (context) => ArticlesPage(),
        );
    }
  }
}
