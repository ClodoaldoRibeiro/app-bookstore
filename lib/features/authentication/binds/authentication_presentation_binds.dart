import 'package:flutter_modular/flutter_modular.dart';

import '../presentation/controllers/login_controller.dart';

abstract class AuthenticationPresenterBinds {
  static List<Bind<Object>> binds = [
    // Controllers
    Bind.factory(
      (i) {
        return LoginController(
          loginUserUsecase: i.get(),
          sesseionController: i.get(),
        );
      },
      export: true,
    ),
  ];
}
