import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/services/api/mocks/login_user_service_mock.dart';
import '../data/datasources/login_user_datasource.dart';
import '../external/datasources/login_user_datasource_impl.dart';
import '../external/mappers/user_model_mapper.dart';

abstract class AuthenticationExternalBinds {
  static List<Bind<Object>> binds = [
    // Mappers
    Bind.singleton(
      (i) {
        return UserModelMapper();
      },
      export: true,
    ),

    // Datasources
    Bind.singleton<LoginUserDatasource>(
      (i) {
        return LoginUserDatasourceImpl(
          apiService: LoginUserServiceMock(),
          userModelMapper: i.get(),
        );
      },
      export: true,
    ),
  ];
}
