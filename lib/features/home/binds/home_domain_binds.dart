import 'package:bookstore/features/home/domain/usecases/get_book_suggestion_usecase.dart';
import 'package:bookstore/features/home/domain/usecases/get_book_suggestion_usecase_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
  ];
}
