import 'package:flutter_modular/flutter_modular.dart';

import '../../routes/routes.dart';
import 'presenter/screens/onboarding_screen.dart';

class OnboardingModule extends Module {
  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(
        OnboardingRoutes.onboardingScreenRoute,
        child: (_, __) {
          return const OnboardingScreen();
        },
      ),
    ];
  }
}
