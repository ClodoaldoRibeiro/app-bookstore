import '../types/authentication_types.dart';

abstract class RegisterUserRepository {
  RegisterUserType call({
    required String name,
    required String userName,
    required String email,
    required String password,
  });
}
