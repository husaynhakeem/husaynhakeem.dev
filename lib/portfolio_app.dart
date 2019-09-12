import 'package:flutter_web/material.dart';
import 'navigation_service.dart';
import 'utility/utilities.dart';

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Husayn Hakeem",
      theme: ThemeData(
        fontFamily: "MerriweatherSans"
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationService.generateRoute,
      navigatorKey: NavigationService.navigationKey,
      initialRoute: NavigationService.route_home,
      builder: (context, child) => ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: child,
      ),
    );
  }
}
