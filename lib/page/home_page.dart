import 'package:flutter_web/material.dart';
import '../widget/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          image: DecorationImage(
            image: AssetImage("web/assets/images/home_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(            
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            Expanded(
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
