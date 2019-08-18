import 'package:flutter_web/material.dart';
import 'page/pages.dart';

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Husayn Hakeem",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
