import 'package:mobx/mobx.dart';

import '../../domain/usecases/register_user_usecase.dart';
import 'session_controller.dart';

part 'signup_controller.g.dart';

// ignore: library_private_types_in_public_api
class SignUpController = _SignUpController with _$SignUpController;

abstract class _SignUpController with Store {
  final RegisterUserUsecase registerUserUsecase;
  SessionController sesseionController;

  _SignUpController({
    required this.registerUserUsecase,
    required this.sesseionController,
  });

  @observable
  String name = '';

  @observable
  String userName = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool passwordVisible = false;

  // @observable
  // LoginCurrentState loginCurrentState = InitialLoginCurrentState();
}
