import 'package:flutter_modular/flutter_modular.dart';

import '../../routes/routes.dart';
import 'presenter/screens/login/login_controller.dart';
import 'presenter/screens/login/login_screen.dart';

class AuthenticationModule extends Module {
  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(
        AuthenticationRoutes.authenticationScreenRoute,
        child: (_, __) {
          return LoginScreen(
            loginController: LoginController(),
          );
        },
      ),
    ];
  }
}
