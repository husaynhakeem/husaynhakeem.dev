import 'dart:core';

import 'package:meta/meta.dart';

class Article {
  final DateTime publishDate;
  final String title;
  final String summary;
  final String url;

  Article({
    @required this.publishDate,
    @required this.title,
    @required this.summary,
    @required this.url,
  });

  factory Article.fromJson(dynamic article) {
    return Article(
        publishDate: DateTime.parse(article['publishDate'].toString()),
        title: article['title'],
        summary: article['summary'],
        url: article['url']);
  }
}
