import 'package:flutter_modular/flutter_modular.dart';

import '../domain/usecases/login_user_usecase.dart';
import '../domain/usecases/login_user_usecase_impl.dart';
import '../domain/usecases/register_user_usecase.dart';
import '../domain/usecases/register_user_usecase_impl.dart';

abstract class AuthenticationDomainBinds {
  static List<Bind<Object>> binds = [
    // Usecases
    Bind.singleton<LoginUserUsecase>(
      (i) {
        return LoginUserUsecaseImpl(
          loginUserRepository: i.get(),
        );
      },
      export: true,
    ),

    Bind.singleton<RegisterUserUsecase>(
      (i) {
        return RegisterUserUsecaseImpl(
          registerUserRepository: i.get(),
        );
      },
      export: true,
    ),
  ];
}
