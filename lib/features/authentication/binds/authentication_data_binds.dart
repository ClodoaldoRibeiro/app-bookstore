import '../data/adapters/user_entity_adapter.dart';
import '../data/repositories/login_user_repository_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../domain/repositories/login_user_repository.dart';

abstract class AuthenticationDataBinds {
  static List<Bind<Object>> binds = [
    // Adapters
    Bind.singleton(
      (i) {
        return UserEntityAdapter();
      },
      export: true,
    ),

    // Repositories
    Bind.singleton<LoginUserRepository>(
      (i) {
        return LoginUserRepositoryImpl(
          loginUserDatasource: i.get(),
          userEntityAdapter: i.get(),
        );
      },
      export: true,
    ),
  ];
}
