import 'package:flutter_web/material.dart';
import '../utility/utilities.dart' as utils;

class Header extends StatelessWidget {
  Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = utils.isSmallScreen(context);
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        "HUSAYN ABDUL HAKEEM",
        style: TextStyle(
          fontSize: 32,
          color: Colors.white,
          letterSpacing: _letterSpacing(isSmallScreen),
          wordSpacing: _wordSpacing(isSmallScreen),
        ),
      ),
    );
  }

  double _letterSpacing(bool isSmallScreen) {
    return isSmallScreen ? 2 : 6;
  }

  double _wordSpacing(bool isSmallScreen) {
    return isSmallScreen ? 0 : 4;
  }
}
