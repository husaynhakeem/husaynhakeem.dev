import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../repository/repositories.dart';
import 'articles_event.dart';
import 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final ArticlesRepository articlesRepository;

  ArticlesBloc({@required this.articlesRepository})
      : assert(articlesRepository != null);

  @override
  ArticlesState get initialState => ArticlesInitial();

  @override
  Stream<ArticlesState> mapEventToState(event) async* {
    if (event == ArticlesEvent.Load) {
      yield ArticlesLoading();
      try {
        final articles = await articlesRepository.getArticles();
        yield ArticlesLoaded(articles: articles);
      } catch (error) {
        yield ArticlesError(error: error.toString());
      }
    }
    throw Exception('Unknown articles event $event');
  }
}
