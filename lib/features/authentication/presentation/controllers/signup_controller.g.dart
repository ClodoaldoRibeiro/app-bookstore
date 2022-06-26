// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignUpController on _SignUpController, Store {
  Computed<String?>? _$nameErrorComputed;

  @override
  String? get nameError =>
      (_$nameErrorComputed ??= Computed<String?>(() => super.nameError,
              name: '_SignUpController.nameError'))
          .value;
  Computed<bool>? _$isValidNameComputed;

  @override
  bool get isValidName =>
      (_$isValidNameComputed ??= Computed<bool>(() => super.isValidName,
              name: '_SignUpController.isValidName'))
          .value;
  Computed<String?>? _$userNameErrorComputed;

  @override
  String? get userNameError =>
      (_$userNameErrorComputed ??= Computed<String?>(() => super.userNameError,
              name: '_SignUpController.userNameError'))
          .value;
  Computed<bool>? _$isValidUserNameComputed;

  @override
  bool get isValidUserName =>
      (_$isValidUserNameComputed ??= Computed<bool>(() => super.isValidUserName,
              name: '_SignUpController.isValidUserName'))
          .value;
  Computed<String?>? _$emailErrorComputed;

  @override
  String? get emailError =>
      (_$emailErrorComputed ??= Computed<String?>(() => super.emailError,
              name: '_SignUpController.emailError'))
          .value;
  Computed<bool>? _$isValidEmailComputed;

  @override
  bool get isValidEmail =>
      (_$isValidEmailComputed ??= Computed<bool>(() => super.isValidEmail,
              name: '_SignUpController.isValidEmail'))
          .value;
  Computed<String?>? _$passwordErrorComputed;

  @override
  String? get passwordError =>
      (_$passwordErrorComputed ??= Computed<String?>(() => super.passwordError,
              name: '_SignUpController.passwordError'))
          .value;
  Computed<bool>? _$isValidPasswordComputed;

  @override
  bool get isValidPassword =>
      (_$isValidPasswordComputed ??= Computed<bool>(() => super.isValidPassword,
              name: '_SignUpController.isValidPassword'))
          .value;
  Computed<bool>? _$isValidFormComputed;

  @override
  bool get isValidForm =>
      (_$isValidFormComputed ??= Computed<bool>(() => super.isValidForm,
              name: '_SignUpController.isValidForm'))
          .value;

  late final _$nameAtom =
      Atom(name: '_SignUpController.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$userNameAtom =
      Atom(name: '_SignUpController.userName', context: context);

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

  late final _$emailAtom =
      Atom(name: '_SignUpController.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_SignUpController.password', context: context);

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
      Atom(name: '_SignUpController.passwordVisible', context: context);

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

  late final _$statusPageAtom =
      Atom(name: '_SignUpController.statusPage', context: context);

  @override
  SignUpCurrentState get statusPage {
    _$statusPageAtom.reportRead();
    return super.statusPage;
  }

  @override
  set statusPage(SignUpCurrentState value) {
    _$statusPageAtom.reportWrite(value, super.statusPage, () {
      super.statusPage = value;
    });
  }

  late final _$_SignUpControllerActionController =
      ActionController(name: '_SignUpController', context: context);

  @override
  void setPasswordVisible({required bool visible}) {
    final _$actionInfo = _$_SignUpControllerActionController.startAction(
        name: '_SignUpController.setPasswordVisible');
    try {
      return super.setPasswordVisible(visible: visible);
    } finally {
      _$_SignUpControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
userName: ${userName},
email: ${email},
password: ${password},
passwordVisible: ${passwordVisible},
statusPage: ${statusPage},
nameError: ${nameError},
isValidName: ${isValidName},
userNameError: ${userNameError},
isValidUserName: ${isValidUserName},
emailError: ${emailError},
isValidEmail: ${isValidEmail},
passwordError: ${passwordError},
isValidPassword: ${isValidPassword},
isValidForm: ${isValidForm}
    ''';
  }
}
