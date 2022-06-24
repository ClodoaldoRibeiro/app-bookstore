import '../types/authentication_types.dart';

abstract class RegisterUserUsecase {
  RegisterUserType call({
    required String name,
    required String userName,
    required String email,
    required String password,
  });
}
