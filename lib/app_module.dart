import 'package:flutter_modular/flutter_modular.dart';

import 'features/authentication/binds/authentication_module.dart';
import 'features/authentication/presentation/controllers/session_controller.dart';
import 'features/book/binds/book_module.dart';
import 'features/home/binds/home_module.dart';
import 'features/onboarding/binds/onboarding_module.dart';
import 'routes/routes.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<SessionController>((i) {
          return SessionController();
        }),
      ];

  @override
  List<Module> get imports => [
        AuthenticationModule(),
        HomeModule(),
        BookModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          OnboardingRoutes.onboardingModuleRoute,
          module: OnboardingModule(),
        ),
        ModuleRoute(
          AuthenticationRoutes.authenticationModuleRoute,
          module: AuthenticationModule(),
        ),
        ModuleRoute(
          HomeRoutes.homeModuleRoute,
          module: HomeModule(),
        ),
        ModuleRoute(
          BookRoutes.bookModuleRoute,
          module: BookModule(),
        ),
      ];
}
