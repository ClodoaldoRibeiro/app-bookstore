import 'package:flutter_modular/flutter_modular.dart';

import '../presentation/controllers/book_new_arrivals_controller.dart';
import '../presentation/controllers/book_suggestion_controller.dart';
import '../presentation/controllers/home_controller.dart';

abstract class HomePresenterBinds {
  static List<Bind<Object>> binds = [
    // Controllers
    Bind.factory(
      (i) {
        return BookSuggestionController(
          getBookSuggestionUsecase: i.get(),
        );
      },
      export: true,
    ),

    Bind.factory(
      (i) {
        return BookNewArrivalsController(
          getBookNewArrivalsUsecase: i.get(),
        );
      },
      export: true,
    ),

    Bind.factory(
      (i) {
        return HomeController(
          sesseionController: i.get(),
          bookSuggestionController: i.get(),
          bookNewArrivalsController: i.get(),
        );
      },
      export: true,
    ),
  ];
}
