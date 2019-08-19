import 'package:flutter_web/material.dart';
import '../widget/widgets.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            SizedBox(height: 32),
            Expanded(
              child: Articles(),
            )
          ],
        ),
      ),
    );
  }
}
