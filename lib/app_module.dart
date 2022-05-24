import 'package:bookstore/features/authentication/authentication_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/onboarding/onboarding_module.dart';
import 'routes/routes.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes {
    return [
      ModuleRoute(
        OnboardingRoutes.onboardingModuleRoute,
        module: OnboardingModule(),
      ),
      ModuleRoute(
        AuthenticationRoutes.authenticationModuleRoute,
        module: AuthenticationModule(),
      ),
    ];
  }
}
