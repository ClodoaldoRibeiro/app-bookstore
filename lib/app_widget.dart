import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'routes/onboarding_routes.dart';
import 'routes/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(OnboardingRoutes.onboardingScreenInitialRoute);

    return MaterialApp.router(
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "Helvetica",
      ),
      title: "Bookstore",
    );
  }
}
