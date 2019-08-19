import 'package:flutter_web/material.dart';
import '../model/models.dart';
import 'dart:html' as html;

class ArticleItem extends StatelessWidget {
  final Article article;

  ArticleItem({Key key, @required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width <= 600;
    if (isSmallScreen) {
      return _smallArticleTile();
    } else {
      return _defaultArticleTile();
    }
  }

  Widget _defaultArticleTile() {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: _articlePublishDate(),
      title: _articleTitle(),
      subtitle: _articleSummary(),
      onTap: () => _openLink(article.url),
    );
  }

  Widget _smallArticleTile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _articlePublishDate(),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: _articleTitle(),
          subtitle: _articleSummary(),
          onTap: () => _openLink(article.url),
        ),
      ],
    );
  }

  Widget _articlePublishDate() {
    return Text(
      _formatDate(article.publishDate),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  Widget _articleTitle() {
    return Text(
      article.title,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  Widget _articleSummary() {
    return Text(
      article.summary,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  String _formatDate(final DateTime date) {
    return "${date.year}-${date.month}-${date.day}";
  }

  void _openLink(final String link) {
    html.window.open(link, link);
  }
}
