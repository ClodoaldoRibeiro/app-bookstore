import '../../../book/domain/entities/book_entity.dart';
import 'package:mobx/mobx.dart';

import 'book_suggestion_current_state.dart';

part 'book_suggestion_controller.g.dart';

// ignore: library_private_types_in_public_api
class BookSuggestionController = _BookSuggestionController
    with _$BookSuggestionController;

abstract class _BookSuggestionController with Store {
  @observable
  BookSuggestionState state = InitialBookSuggestionCurrentState();

  void bookSuggestion() {
    state = state.loadingBookSuggestionCurrentState();

    state = state.loadedBookSuggestionCurrentState(
      bookEntity: const BookEntity(
        urlCover: 'urlCover',
        title: 'title',
        author: 'author',
        evaluation: 0,
        aboutAuthor: 'aboutAuthor',
        description: 'description',
        price: 1.25,
      ),
    );
  }
}
