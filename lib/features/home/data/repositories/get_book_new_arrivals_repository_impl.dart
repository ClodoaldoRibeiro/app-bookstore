import 'package:either_dart/either.dart';

import '../../domain/failures/book_new_arrivals_failure.dart';
import '../../domain/repositories/get_book_new_arrivals_repository.dart';
import '../../domain/types/home_types.dart';
import '../adapters/book_entity_adapter.dart';
import '../datasources/get_book_new_arrivals_datasource.dart';

class GetBookNewArrivalsRepositoryImpl implements GetBookNewArrivalsRepository {
  final GetBookNewArrivalsDatasource _getBookNewArrivalsDatasource;
  final BookEntityAdapter _bookEntityAdapter;

  const GetBookNewArrivalsRepositoryImpl({
    required GetBookNewArrivalsDatasource getBookNewArrivalsDatasource,
    required BookEntityAdapter bookEntityAdapter,
  })  : _getBookNewArrivalsDatasource = getBookNewArrivalsDatasource,
        _bookEntityAdapter = bookEntityAdapter;

  @override
  BookNewArrivalsType call() async {
    try {
      final listBookModel = await _getBookNewArrivalsDatasource.call();

      final listBookEntity = _bookEntityAdapter.fromListBookModel(
        listBooksModel: listBookModel,
      );

      return Right(listBookEntity);
    } catch (_) {
      return const Left(BookNewArrivalsFailure());
    }
  }
}
