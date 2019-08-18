import 'package:flutter_web/material.dart';
import '../widget/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assetName"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Header(),
            Menu(),
          ],
        ),
      ),
    );
  }
}
