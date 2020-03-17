import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../model/models.dart';

abstract class ArticlesState extends Equatable {
  @override
  List<Object> get props => const [];
}

class ArticlesInitial extends ArticlesState {}

class ArticlesLoading extends ArticlesState {}

class ArticlesLoaded extends ArticlesState {
  final List<Article> articles;

  ArticlesLoaded({@required this.articles}) : assert(articles != null);

  @override
  List<Object> get props => [articles];
}

class ArticlesError extends ArticlesState {
  final String error;

  ArticlesError({@required this.error})
      : assert(error != null && error.isNotEmpty);

  @override
  List<Object> get props => [error];
}
