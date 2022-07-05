import '../../../book/domain/entities/book_entity.dart';

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
    required List<BookEntity> bookEntityList,
  }) {
    return LoadedBookSuggestionCurrentState(
      bookEntityList: bookEntityList,
    );
  }
}

class InitialBookSuggestionCurrentState extends BookSuggestionState {}

class LoadingBookSuggestionCurrentState extends BookSuggestionState {}

class ErrorBookSuggestionCurrentState extends BookSuggestionState {}

class LoadedBookSuggestionCurrentState extends BookSuggestionState {
  final List<BookEntity> bookEntityList;

  LoadedBookSuggestionCurrentState({
    required this.bookEntityList,
  });
}
