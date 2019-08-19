import 'package:flutter_web/material.dart';
import 'navigation_service.dart';

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Husayn Hakeem",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationService.generateRoute,
      navigatorKey: NavigationService.navigationKey,
      initialRoute: NavigationService.route_home,
    );
  }
}
