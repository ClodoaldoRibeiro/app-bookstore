import 'package:flutter_modular/flutter_modular.dart';

import '../../../routes/routes.dart';
import '../presentation/screens/book_details/book_details_screen.dart';
import 'book_presentation_binds.dart';

class BookModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        ...BookPresenterBinds.binds,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          BookRoutes.bookScreenRoute,
          child: (_, args) {
            return BookDetailsScreen(
              bookDetailsController: Modular.get(),
              bookEntity: args.data,
            );
          },
        ),
      ];
}
