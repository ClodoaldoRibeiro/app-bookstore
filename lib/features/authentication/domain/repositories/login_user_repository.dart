import '../types/authentication_types.dart';

abstract class LoginUserRepository {
  LoginUserType call({
    required String userName,
    required String password,
  });
}
