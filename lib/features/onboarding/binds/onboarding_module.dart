import 'package:flutter_modular/flutter_modular.dart';

import '../../../routes/routes.dart';
import '../presentation/screens/onboarding_screen.dart';

class OnboardingModule extends Module {
  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          OnboardingRoutes.onboardingScreenRoute,
          child: (_, __) {
            return const OnboardingScreen();
          },
        ),
      ];
}
