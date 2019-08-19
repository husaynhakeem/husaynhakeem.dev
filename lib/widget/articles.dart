import 'package:flutter_web/material.dart';
import 'article_item.dart';
import '../model/models.dart';

class Articles extends StatelessWidget {
  final _articles = <Article>[
    Article(
      publishDate: DateTime.now(),
      title: "What is Lorem Ipsum?",
      summary:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      url: "https://www.google.com",
    ),
    Article(
      publishDate: DateTime.now(),
      title: "What is Lorem Ipsum?",
      summary:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      url: "https://www.google.com",
    ),
    Article(
      publishDate: DateTime.now(),
      title: "What is Lorem Ipsum?",
      summary:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      url: "https://www.google.com",
    ),
    Article(
      publishDate: DateTime.now(),
      title: "What is Lorem Ipsum?",
      summary:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      url: "https://www.google.com",
    ),
    Article(
      publishDate: DateTime.now(),
      title: "What is Lorem Ipsum?",
      summary:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      url: "https://www.google.com",
    ),
    Article(
      publishDate: DateTime.now(),
      title: "What is Lorem Ipsum?",
      summary:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      url: "https://www.google.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _articles.length,
      itemBuilder: (context, index) => ArticleItem(
        article: _articles[index],
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 16,
      ),
    );
  }
}
