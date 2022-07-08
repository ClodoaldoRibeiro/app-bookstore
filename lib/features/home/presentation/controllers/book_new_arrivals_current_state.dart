import '../../../book/domain/entities/book_entity.dart';

abstract class BookNewArrivalsCurrentState {
  InitialBookNewArrivalsCurrentState initialBookNewArrivalsCurrentState() {
    return InitialBookNewArrivalsCurrentState();
  }

  LoadingBookNewArrivalsCurrentState loadingBookNewArrivalsCurrentState() {
    return LoadingBookNewArrivalsCurrentState();
  }

  ErrorBookNewArrivalsCurrentState errorBookNewArrivalsCurrentState() {
    return ErrorBookNewArrivalsCurrentState();
  }

  LoadedBookNewArrivalsCurrentState loadedBookNewArrivalsCurrentState({
    required List<BookEntity> bookEntityList,
  }) {
    return LoadedBookNewArrivalsCurrentState(
      bookEntityList: bookEntityList,
    );
  }
}

class InitialBookNewArrivalsCurrentState extends BookNewArrivalsCurrentState {}

class LoadingBookNewArrivalsCurrentState extends BookNewArrivalsCurrentState {}

class ErrorBookNewArrivalsCurrentState extends BookNewArrivalsCurrentState {}

class LoadedBookNewArrivalsCurrentState extends BookNewArrivalsCurrentState {
  final List<BookEntity> bookEntityList;

  LoadedBookNewArrivalsCurrentState({
    required this.bookEntityList,
  });
}
