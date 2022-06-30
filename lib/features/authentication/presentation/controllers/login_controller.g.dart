// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on _LoginController, Store {
  Computed<String?>? _$userNameErrorComputed;

  @override
  String? get userNameError =>
      (_$userNameErrorComputed ??= Computed<String?>(() => super.userNameError,
              name: '_LoginController.userNameError'))
          .value;
  Computed<bool>? _$isValidUserNameComputed;

  @override
  bool get isValidUserName =>
      (_$isValidUserNameComputed ??= Computed<bool>(() => super.isValidUserName,
              name: '_LoginController.isValidUserName'))
          .value;
  Computed<String?>? _$passwordErrorComputed;

  @override
  String? get passwordError =>
      (_$passwordErrorComputed ??= Computed<String?>(() => super.passwordError,
              name: '_LoginController.passwordError'))
          .value;
  Computed<bool>? _$isValidPasswordComputed;

  @override
  bool get isValidPassword =>
      (_$isValidPasswordComputed ??= Computed<bool>(() => super.isValidPassword,
              name: '_LoginController.isValidPassword'))
          .value;
  Computed<bool>? _$isValidFormComputed;

  @override
  bool get isValidForm =>
      (_$isValidFormComputed ??= Computed<bool>(() => super.isValidForm,
              name: '_LoginController.isValidForm'))
          .value;

  late final _$userNameAtom =
      Atom(name: '_LoginController.userName', context: context);

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginController.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$passwordVisibleAtom =
      Atom(name: '_LoginController.passwordVisible', context: context);

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  late final _$stateAtom =
      Atom(name: '_LoginController.state', context: context);

  @override
  LoginCurrentState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(LoginCurrentState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$_LoginControllerActionController =
      ActionController(name: '_LoginController', context: context);

  @override
  void setPasswordVisible({required bool visible}) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setPasswordVisible');
    try {
      return super.setPasswordVisible(visible: visible);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userName: ${userName},
password: ${password},
passwordVisible: ${passwordVisible},
state: ${state},
userNameError: ${userNameError},
isValidUserName: ${isValidUserName},
passwordError: ${passwordError},
isValidPassword: ${isValidPassword},
isValidForm: ${isValidForm}
    ''';
  }
}
