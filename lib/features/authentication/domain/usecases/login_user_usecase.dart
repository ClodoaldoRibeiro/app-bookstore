import '../types/authentication_types.dart';

abstract class LoginUserUsecase {
  LoginUserType call({
    required String userName,
    required String password,
  });
}
