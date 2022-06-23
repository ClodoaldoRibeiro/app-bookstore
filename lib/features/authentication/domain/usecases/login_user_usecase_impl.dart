import '../repositories/login_user_repository.dart';
import 'package:either_dart/either.dart';

import '../failures/login_user_failure.dart';
import '../types/authentication_types.dart';
import 'login_user_usecase.dart';

class LoginUserUsecaseImpl implements LoginUserUsecase {
  final LoginUserRepository _loginUserRepository;

  const LoginUserUsecaseImpl({
    required LoginUserRepository loginUserRepository,
  }) : _loginUserRepository = loginUserRepository;

  @override
  LoginUserType call({
    required String userName,
    required String password,
  }) async {
    if (userName.isEmpty || password.isEmpty) {
      return const Left(
        LoginUserFailure(),
      );
    }

    return _loginUserRepository.call(
      userName: userName,
      password: password,
    );
  }
}
