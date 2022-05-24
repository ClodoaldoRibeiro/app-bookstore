import 'package:bookstore/features/authentication/presenter/screens/login/login_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../routes/routes.dart';

class AuthenticationModule extends Module {
  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute(
        AuthenticationRoutes.authenticationScreenRoute,
        child: (_, __) {
          return const LoginScreen();
        },
      ),
    ];
  }
}
