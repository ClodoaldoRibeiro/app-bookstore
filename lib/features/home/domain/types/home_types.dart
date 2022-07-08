import 'package:either_dart/either.dart';

import '../../../book/domain/entities/book_entity.dart';
import '../failures/book_new_arrivals_failure.dart';
import '../failures/book_suggestion_failure.dart';

typedef BookSuggestionType
    = Future<Either<BookSuggestionFailure, List<BookEntity>>>;

typedef BookNewArrivalsType
    = Future<Either<BookNewArrivalsFailure, List<BookEntity>>>;
