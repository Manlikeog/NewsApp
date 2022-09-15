part of 'news_bloc_bloc.dart';

abstract class NewsBlocState extends Equatable {
  const NewsBlocState();

  @override
  List<Object> get props => [];
}

class NewsBlocInitial extends NewsBlocState {}

class LoadingState extends NewsBlocState {}

class LoadedState extends NewsBlocState {
  final Future<List<NewsModel>> repository;
  const LoadedState(this.repository);
}

class ErrorState extends NewsBlocState {
  final String message;
  const ErrorState(this.message);
}
