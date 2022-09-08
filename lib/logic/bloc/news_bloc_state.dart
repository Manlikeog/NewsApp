part of 'news_bloc_bloc.dart';

abstract class NewsBlocState extends Equatable {
  const NewsBlocState();
  
  @override
  List<Object> get props => [];
}

class NewsBlocInitial extends NewsBlocState {}
