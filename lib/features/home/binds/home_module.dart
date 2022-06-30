import 'package:flutter_modular/flutter_modular.dart';

import '../../../routes/home_routes.dart';
import '../presentation/screens/home_screen.dart';
import 'home_presentation_binds.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        ...HomePresenterBinds.binds,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          HomeRoutes.homeScreenRoute,
          child: (_, __) {
            return HomeScreen(
              homeController: Modular.get(),
            );
          },
        ),
      ];
}
