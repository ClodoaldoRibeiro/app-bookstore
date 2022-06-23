import '../../domain/entities/user_entity.dart';

class SessionController {
  UserEntity? _userEntity;
  DateTime? dateTimeLogin;

  bool loggedUser() {
    return _userEntity != null;
  }

  void logout() {
    _userEntity = null;
  }

  void configureLoggedUser({
    required UserEntity userEntity,
  }) {
    _userEntity = userEntity;
    dateTimeLogin = DateTime.now();
  }

  UserEntity? getUser() {
    return _userEntity;
  }
}
