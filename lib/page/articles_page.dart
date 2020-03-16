import 'package:flutter/material.dart';
import '../widget/widgets.dart';
import 'dart:html' as html;

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
@override
  void initState() {
    super.initState();
    html.window.history.pushState(null, "Articles", "/articles");
  }

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
