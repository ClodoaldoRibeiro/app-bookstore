import '../../../book/domain/entities/book_entity.dart';
import '../models/book_model.dart';

class BookEntityAdapter {
  BookEntity fromModel({
    required BookModel bookModel,
  }) {
    return BookEntity(
      urlCover: bookModel.urlCover,
      title: bookModel.title,
      author: bookModel.author,
      evaluation: bookModel.evaluation,
      aboutAuthor: bookModel.aboutAuthor,
      description: bookModel.description,
      price: bookModel.price,
    );
  }

  List<BookEntity> fromListBookModel({
    required List<BookModel> listBooksModel,
  }) {
    return listBooksModel.map(
      (bookModel) {
        return fromModel(
          bookModel: bookModel,
        );
      },
    ).toList();
  }
}
