import '../models/book_model.dart';

abstract class GetBookSuggestionDatasource {
  Future<List<BookModel>> call();
}
