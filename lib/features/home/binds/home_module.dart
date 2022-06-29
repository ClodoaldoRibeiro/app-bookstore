import 'package:flutter_modular/flutter_modular.dart';

import '../../../routes/routes.dart';
import '../presentation/screens/home_screen.dart';
import 'home_presentation_binds.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        ...HomePresenterBinds.binds,
      ];

  @override
  List<Module> get imports => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          OnboardingRoutes.onboardingScreenRoute,
          child: (_, __) {
            return HomeScreen(
              homeController: Modular.get(),
            );
          },
        ),
      ];
}
