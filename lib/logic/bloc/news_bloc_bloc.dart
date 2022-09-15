import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/data/api/api.dart';
import 'package:news_app/data/models/models.dart';

part 'news_bloc_event.dart';
part 'news_bloc_state.dart';

class NewsBlocBloc extends Bloc<NewsBlocEvent, NewsBlocState> {
  final CategoryRepository _categoryRepository;
  NewsBlocBloc(this._categoryRepository) : super(NewsBlocInitial()) {
    on<FetchArticle>(_mapEventToState);
  }

  _mapEventToState(
    FetchArticle event,
    Emitter emit,
  ) {
    emit(LoadingState());

    try {
      final repository = _categoryRepository.fetchCategory(event.category);
      emit(
        LoadedState(
          repository,
        ),
      );
    } catch (e) {
      emit(
        ErrorState(
          e.toString(),
        ),
      );
    }
  }
}
