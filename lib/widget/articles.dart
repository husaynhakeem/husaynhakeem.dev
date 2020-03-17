import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../bloc/bloc.dart';
import '../model/models.dart';
import '../repository/repositories.dart';
import 'article_item.dart';

class Articles extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  final _articlesBloc = ArticlesBloc(
      articlesRepository: ArticlesRepository(httpClient: http.Client()));

  @override
  void initState() {
    super.initState();
    _articlesBloc.add(ArticlesEvent.Load);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 32, bottom: 32, left: 32),
        child: BlocBuilder<ArticlesBloc, ArticlesState>(
          bloc: _articlesBloc,
          builder: (context, state) {
            if (state is ArticlesLoading) {
              return _buildArticlesLoading();
            }

            if (state is ArticlesLoaded) {
              return _buildArticlesList(state.articles);
            }

            if (state is ArticlesError) {
              return _buildArticlesError(state.error);
            }

            return Container();
          },
        ));
  }

  Widget _buildArticlesLoading() {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.white54,
      ),
    );
  }

  Widget _buildArticlesList(List<Article> articles) {
    return ListView.separated(
      itemCount: articles.length,
      itemBuilder: (context, index) => ArticleItem(
        article: articles[index],
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 16,
      ),
    );
  }

  Widget _buildArticlesError(String error) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.error_outline,
            color: Colors.white,
            size: 64,
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Text(
            error,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
