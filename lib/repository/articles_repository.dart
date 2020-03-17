import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../model/models.dart';

class ArticlesRepository {
  static const String URL =
      'https://script.google.com/macros/s/AKfycbyuLQu3NpIYKEIuEbVOumqxhkid70pfNeJPFFSYusRNWcJhzDKe/exec';
  final http.Client httpClient;

  ArticlesRepository({@required this.httpClient}) : assert(httpClient != null);

  Future<List<Article>> getArticles() async {
    final response = await httpClient.get(URL);
    if (response.statusCode != 200) {
      throw Exception('An error occurred while fetching the articles');
    }

    final articles = jsonDecode(response.body) as List;
    return articles.map((article) => Article.fromJson(article)).toList();
  }
}
