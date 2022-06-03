import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

// ignore: library_private_types_in_public_api
class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  @observable
  String userName = 'private_types_in';

  @observable
  String password = 'private_types_in';

  @observable
  bool passwordVisible = false;

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
  bool get userNameValid {
    if (userNameError != null || userName == 'private_types_in') {
      return false;
    }

    return true;
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
  bool get passwordValid {
    if (passwordError != null || password == 'private_types_in') {
      return false;
    }

    return true;
  }

  @action
  void setPasswordVisible({
    required bool visible,
  }) {
    passwordVisible = visible;
  }

  @computed
  bool get formValid {
    return userNameValid && passwordValid;
  }
}
