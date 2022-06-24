import 'package:flutter_modular/flutter_modular.dart';

import '../../../routes/routes.dart';
import '../presentation/screens/login/login_screen.dart';
import '../presentation/screens/signup/signup_screen.dart';
import 'authentication_data_binds.dart';
import 'authentication_domain_binds.dart';
import 'authentication_external_binds.dart';
import 'authentication_presentation_binds.dart';

class AuthenticationModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        ...AuthenticationDomainBinds.binds,
        ...AuthenticationDataBinds.binds,
        ...AuthenticationExternalBinds.binds,
        ...AuthenticationPresenterBinds.binds,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AuthenticationRoutes.authenticationScreenRoute,
          child: (_, __) {
            return LoginScreen(
              loginController: Modular.get(),
            );
          },
        ),
        ChildRoute(
          AuthenticationRoutes.authenticationSignUpScreenRoute,
          child: (_, __) {
            return SignUpScreen(
              signUpController: Modular.get(),
            );
          },
        ),
      ];
}
