part of 'news_bloc_bloc.dart';

class NewsBlocEvent extends Equatable {
  const NewsBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchArticle extends NewsBlocEvent {
  final String category;

  const FetchArticle({
    required this.category,
  });
}
