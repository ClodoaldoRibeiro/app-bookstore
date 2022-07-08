import 'package:flutter_modular/flutter_modular.dart';

import '../domain/usecases/get_book_new_arrivals_usecase.dart';
import '../domain/usecases/get_book_new_arrivals_usecase_impl.dart';
import '../domain/usecases/get_book_suggestion_usecase.dart';
import '../domain/usecases/get_book_suggestion_usecase_impl.dart';

abstract class HomeDomainBinds {
  static List<Bind<Object>> binds = [
    // Usecases
    Bind.singleton<GetBookSuggestionUsecase>(
      (i) {
        return GetBookSuggestionUsecaseImpl(
          getBookSuggestionRepository: i.get(),
        );
      },
      export: true,
    ),

    Bind.singleton<GetBookNewArrivalsUsecase>(
      (i) {
        return GetBookNewArrivalsUsecaseImpl(
          getBookNewArrivalsRepository: i.get(),
        );
      },
      export: true,
    ),
  ];
}
