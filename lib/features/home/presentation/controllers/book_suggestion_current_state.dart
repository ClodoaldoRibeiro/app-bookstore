import 'package:bookstore/features/book/domain/entities/book_entity.dart';

abstract class BookSuggestionState {
  InitialBookSuggestionCurrentState initialBookSuggestionCurrentState() {
    return InitialBookSuggestionCurrentState();
  }

  LoadingBookSuggestionCurrentState loadingBookSuggestionCurrentState() {
    return LoadingBookSuggestionCurrentState();
  }

  ErrorBookSuggestionCurrentState errorBookSuggestionCurrentState() {
    return ErrorBookSuggestionCurrentState();
  }

  LoadedBookSuggestionCurrentState loadedBookSuggestionCurrentState({
    required BookEntity bookEntity,
  }) {
    return LoadedBookSuggestionCurrentState(bookEntity: bookEntity);
  }
}

class InitialBookSuggestionCurrentState extends BookSuggestionState {}

class LoadingBookSuggestionCurrentState extends BookSuggestionState {}

class ErrorBookSuggestionCurrentState extends BookSuggestionState {}

class LoadedBookSuggestionCurrentState extends BookSuggestionState {
  final BookEntity bookEntity;

  LoadedBookSuggestionCurrentState({
    required this.bookEntity,
  });
}
