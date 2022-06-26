import 'package:bookstore/features/authentication/presentation/controllers/signup_current_state.dart';
import 'package:mobx/mobx.dart';

import '../../domain/usecases/register_user_usecase.dart';
import 'session_controller.dart';
import 'package:bookstore/core/extensions/email_validato_extension.dart';

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

  @observable
  SignUpCurrentState statusPage = InitialSignUpCurrentState();

  @computed
  String? get nameError {
    if (name.trim().isEmpty) {
      return 'Nome completo não informado';
    }

    if (name.trim().length <= 3) {
      return 'Nome muito curto';
    }

    return null;
  }

  @computed
  bool get isValidName {
    return nameError == null ? true : false;
  }

  @computed
  String? get userNameError {
    if (userName.trim().isEmpty) {
      return 'Nome do usuário não informado';
    }

    if (userName.trim().length <= 3) {
      return 'Nome muito curto';
    }

    return null;
  }

  @computed
  bool get isValidUserName {
    return userNameError == null ? true : false;
  }

  @computed
  String? get emailError {
    if (email.trim().isEmpty) {
      return 'E-mail não informado';
    }

    if (email.trim().length <= 3) {
      return 'E-mail muito curto';
    }

    if (!email.isValidEmail()) {
      return 'E-mail inválido';
    }

    return null;
  }

  @computed
  bool get isValidEmail {
    return emailError == null ? true : false;
  }

  @computed
  String? get passwordError {
    if (password.trim().isEmpty) {
      return 'Senha não informada';
    }

    if (password.trim().length <= 5) {
      return 'Senha muito curta';
    }

    return null;
  }

  @computed
  bool get isValidPassword {
    return passwordError == null ? true : false;
  }

  @action
  void setPasswordVisible({
    required bool visible,
  }) {
    passwordVisible = visible;
  }

  @computed
  bool get isValidForm {
    return isValidUserName && isValidEmail && isValidName && isValidPassword;
  }

  void register() async {
    statusPage = statusPage.loadingSignUpCurrentState();

    final registerUserUsecaseCallback = await registerUserUsecase.call(
      name: name,
      userName: userName,
      email: email,
      password: password,
    );

    registerUserUsecaseCallback.fold(
      (loginFailure) {
        statusPage = statusPage.errorSignUpCurrentState();
      },
      (userSession) {
        sesseionController.configureLoggedUser(
          userEntity: userSession,
        );

        statusPage = statusPage.loadedSignUpCurrentState();
      },
    );
  }
}
