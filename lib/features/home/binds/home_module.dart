import 'package:flutter_modular/flutter_modular.dart';

import '../../../routes/home_routes.dart';
import '../presentation/screens/home_screen.dart';
import 'home_data_binds.dart';
import 'home_domain_binds.dart';
import 'home_external_binds.dart';
import 'home_presentation_binds.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        ...HomeDomainBinds.binds,
        ...HomeDataBinds.binds,
        ...HomeExternalBinds.binds,
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
