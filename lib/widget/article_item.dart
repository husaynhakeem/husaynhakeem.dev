import 'package:flutter_web/material.dart';
import '../model/models.dart';
import 'dart:html' as html;

class ArticleItem extends StatelessWidget {
  final Article article;

  ArticleItem({Key key, @required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Text(
        _formatDate(article.publishDate),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      title: Text(
        article.title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        article.summary,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onTap: () => _openLink(article.url),
    );
  }

  String _formatDate(final DateTime date) {
    return "${date.year}-${date.month}-${date.day}";
  }

  void _openLink(final String link) {
    html.window.open(link, link);
  }
}
