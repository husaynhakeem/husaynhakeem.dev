import 'package:flutter_web/material.dart';

class MenuSeparator extends StatelessWidget {
  MenuSeparator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      " - ",
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
