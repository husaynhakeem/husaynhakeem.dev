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
      trailing: _readArticle(),
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
          trailing: _readArticle(),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        article.summary,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "MerriweatherSansLight",
          letterSpacing: 1,
          wordSpacing: 2,
        ),
      ),
    );
  }

  String _formatDate(final DateTime date) {
    final year = date.year.toString();
    final month = date.month <= 9 ? "0${date.month}" : date.month.toString();
    final day = date.day <= 9 ? "0${date.day}" : date.day.toString();
    return "$year-$month-$day";
  }

  Widget _readArticle() {
    return Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
      );
  }

  void _openLink(final String link) {
    html.window.open(link, link);
  }
}
