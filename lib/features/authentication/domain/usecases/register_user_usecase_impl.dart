import '../repositories/register_user_repository.dart';
import '../types/authentication_types.dart';
import 'register_user_usecase.dart';

class RegisterUserUsecaseImpl extends RegisterUserUsecase {
  final RegisterUserRepository _registerUserRepository;

  RegisterUserUsecaseImpl({
    required RegisterUserRepository registerUserRepository,
  }) : _registerUserRepository = registerUserRepository;

  @override
  RegisterUserType call({
    required String name,
    required String userName,
    required String email,
    required String password,
  }) {
    return _registerUserRepository.call(
      name: name,
      userName: userName,
      email: email,
      password: password,
    );
  }
}
