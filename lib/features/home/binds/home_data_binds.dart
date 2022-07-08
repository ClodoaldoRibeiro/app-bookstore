import 'package:flutter_modular/flutter_modular.dart';

import '../data/adapters/book_entity_adapter.dart';
import '../data/repositories/get_book_new_arrivals_repository_impl.dart';
import '../data/repositories/get_book_suggestion_repository_impl.dart';
import '../domain/repositories/get_book_new_arrivals_repository.dart';
import '../domain/repositories/get_book_suggestion_repository.dart';

abstract class HomeDataBinds {
  static List<Bind<Object>> binds = [
    // Adapters
    Bind.singleton(
      (i) {
        return BookEntityAdapter();
      },
      export: true,
    ),

    // Repositories
    Bind.singleton<GetBookSuggestionRepository>(
      (i) {
        return GetBookSuggestionRepositoryImpl(
          getBookSuggestionDatasource: i.get(),
          bookEntityAdapter: i.get(),
        );
      },
      export: true,
    ),

    Bind.singleton<GetBookNewArrivalsRepository>(
      (i) {
        return GetBookNewArrivalsRepositoryImpl(
          getBookNewArrivalsDatasource: i.get(),
          bookEntityAdapter: i.get(),
        );
      },
      export: true,
    ),
  ];
}
