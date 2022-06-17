import 'package:either_dart/either.dart';

import '../../domain/failures/login_user_failure.dart';
import '../../domain/repositories/login_user_repository.dart';
import '../../domain/types/authentication_types.dart';
import '../adapters/user_entity_adapter.dart';
import '../datasources/login_user_datasource.dart';

class LoginUserRepositoryImpl implements LoginUserRepository {
  final LoginUserDatasource _loginUserDatasource;
  final UserEntityAdapter _userEntityAdapter;

  const LoginUserRepositoryImpl({
    required LoginUserDatasource loginUserDatasource,
    required UserEntityAdapter userEntityAdapter,
  })  : _loginUserDatasource = loginUserDatasource,
        _userEntityAdapter = userEntityAdapter;

  @override
  LoginUserType call({
    required String userName,
    required String password,
  }) async {
    try {
      final userModel = await _loginUserDatasource.call(
        userName: userName,
        password: password,
      );

      final userEntity = _userEntityAdapter.fromModel(
        userModel: userModel,
      );

      return Right(userEntity);
    } catch (_) {
      return const Left(LoginUserFailure());
    }
  }
}
