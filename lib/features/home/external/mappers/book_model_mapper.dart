import 'dart:convert';

import '../../data/models/book_model.dart';

class BookModelMapper {
  BookModel fromMap({
    required Map<String, dynamic> bookMap,
  }) {
    return BookModel(
      urlCover: bookMap['urlCover'] ?? '',
      title: bookMap['title'] ?? '',
      author: bookMap['author'] ?? '',
      evaluation: bookMap['evaluation'] ?? '',
      aboutAuthor: bookMap['aboutAuthor'] ?? '',
      description: bookMap['description'] ?? '',
      price: bookMap['price'] ?? '',
    );
  }

  List<BookModel> fromJson({
    required String bookJson,
  }) {
    final bookMap = jsonDecode(bookJson);

    return _fromListMap(
      bookMap: bookMap,
    );
  }

  List<BookModel> _fromListMap({
    required Map<String, dynamic> bookMap,
  }) {
    return bookMap['results'] == null
        ? List.empty()
        : (bookMap['results'] as List).map(
            (bookMap) {
              return fromMap(
                bookMap: bookMap,
              );
            },
          ).toList();
  }
}
