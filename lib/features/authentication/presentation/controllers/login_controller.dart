import 'package:mobx/mobx.dart';

import '../../domain/usecases/login_user_usecase.dart';
import 'login_current_state.dart';
import 'session_controller.dart';

part 'login_controller.g.dart';

// ignore: library_private_types_in_public_api
class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final LoginUserUsecase loginUserUsecase;
  SessionController sesseionController;

  _LoginController({
    required this.loginUserUsecase,
    required this.sesseionController,
  });

  @observable
  String userName = '';

  @observable
  String password = '';

  @observable
  bool passwordVisible = false;

  @observable
  LoginCurrentState state = InitialLoginCurrentState();

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
    return isValidUserName && isValidPassword;
  }

  void authenticate() async {
    state = state.loadingLoginCurrentState();

    final loginUserUsecaseCallback = await loginUserUsecase.call(
      userName: userName,
      password: password,
    );

    loginUserUsecaseCallback.fold(
      (loginFailure) {
        state = state.errorLoginCurrentState();
      },
      (userSession) {
        sesseionController.configureLoggedUser(
          userEntity: userSession,
        );

        state = state.loadedLoginCurrentState();
      },
    );
  }
}
