import 'package:flutter_web/material.dart';
import '../widget/widgets.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(
            isClickable: true,
          ),
          Expanded(
            child: Articles(),
          )
        ],
      ),
    );
  }
}
