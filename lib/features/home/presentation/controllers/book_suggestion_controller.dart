import 'package:mobx/mobx.dart';

import 'book_suggestion_current_state.dart';

part 'book_suggestion_controller.g.dart';

// ignore: library_private_types_in_public_api
class BookSuggestionController = _BookSuggestionController
    with _$BookSuggestionController;

abstract class _BookSuggestionController with Store {
  @observable
  BookSuggestionState state = InitialBookSuggestionCurrentState();

  void bookSuggestion() {}
}
