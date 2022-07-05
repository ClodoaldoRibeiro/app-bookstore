import 'package:mobx/mobx.dart';

import '../../domain/usecases/get_book_suggestion_usecase.dart';
import 'book_suggestion_current_state.dart';

part 'book_suggestion_controller.g.dart';

// ignore: library_private_types_in_public_api
class BookSuggestionController = _BookSuggestionController
    with _$BookSuggestionController;

abstract class _BookSuggestionController with Store {
  final GetBookSuggestionUsecase getBookSuggestionUsecase;

  _BookSuggestionController({
    required this.getBookSuggestionUsecase,
  });

  @observable
  BookSuggestionState state = InitialBookSuggestionCurrentState();

  void bookSuggestion() async {
    state = state.loadingBookSuggestionCurrentState();

    final getBookSuggestionCallback = await getBookSuggestionUsecase.call();

    getBookSuggestionCallback.fold(
      (bookSuggestionFailure) {
        state = state.errorBookSuggestionCurrentState();
      },
      (bookEntityList) {
        state = state.loadedBookSuggestionCurrentState(
          bookEntityList: bookEntityList,
        );
      },
    );
  }
}
