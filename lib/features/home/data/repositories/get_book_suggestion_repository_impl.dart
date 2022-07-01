import 'package:either_dart/either.dart';

import '../../domain/failures/book_suggestion_failure.dart';
import '../../domain/repositories/get_book_suggestion_repository.dart';
import '../../domain/types/home_types.dart';
import '../adapters/book_entity_adapter.dart';
import '../datasources/get_book_suggestion_datasource.dart';

class GetBookSuggestionRepositoryImpl implements GetBookSuggestionRepository {
  final GetBookSuggestionDatasource _getBookSuggestionDatasource;
  final BookEntityAdapter _bookEntityAdapter;

  const GetBookSuggestionRepositoryImpl({
    required GetBookSuggestionDatasource getBookSuggestionDatasource,
    required BookEntityAdapter bookEntityAdapter,
  })  : _getBookSuggestionDatasource = getBookSuggestionDatasource,
        _bookEntityAdapter = bookEntityAdapter;

  @override
  BookSuggestionType call() async {
    try {
      final listBookModel = await _getBookSuggestionDatasource.call();

      final listBookEntity = _bookEntityAdapter.fromListBookModel(
        listBooksModel: listBookModel,
      );

      return Right(listBookEntity);
    } catch (_) {
      return const Left(BookSuggestionFailure());
    }
  }
}
