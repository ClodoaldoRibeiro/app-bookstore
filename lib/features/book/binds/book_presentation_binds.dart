import 'package:flutter_modular/flutter_modular.dart';

import '../presentation/controllers/book_details_controller.dart';

abstract class BookPresenterBinds {
  static List<Bind<Object>> binds = [
    // Controllers
    Bind.factory(
      (i) {
        return BookDetailsController();
      },
      export: true,
    ),
  ];
}
