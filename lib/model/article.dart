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
}
