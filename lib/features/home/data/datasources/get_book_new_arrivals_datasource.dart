import '../models/book_model.dart';

abstract class GetBookNewArrivalsDatasource {
  Future<List<BookModel>> call();
}
