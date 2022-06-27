import 'package:either_dart/either.dart';

import '../../domain/failures/register_user_failure.dart';
import '../../domain/repositories/register_user_repository.dart';
import '../../domain/types/authentication_types.dart';
import '../adapters/user_entity_adapter.dart';
import '../datasources/register_user_datasource.dart';

class RegisterUserRepositoryImpl extends RegisterUserRepository {
  final RegisterUserDatasource _registerUserDatasource;
  final UserEntityAdapter _userEntityAdapter;

  RegisterUserRepositoryImpl({
    required RegisterUserDatasource registerUserDatasource,
    required UserEntityAdapter userEntityAdapter,
  })  : _registerUserDatasource = registerUserDatasource,
        _userEntityAdapter = userEntityAdapter;

  @override
  RegisterUserType call({
    required String name,
    required String userName,
    required String email,
    required String password,
  }) async {
    try {
      final registerUserModel = await _registerUserDatasource.call(
        name: name,
        userName: userName,
        email: email,
        password: password,
      );

      final registerUserEntity = _userEntityAdapter.fromModel(
        userModel: registerUserModel,
      );

      return Right(registerUserEntity);
    } catch (_) {
      return const Left(RegisterUserFailure());
    }
  }
}
