import '../../domain/entities/user_entity.dart';

class SessionController {
  UserEntity? userEntity;
  DateTime? dateTimeLogin;

  bool loggedUser() {
    return userEntity != null;
  }

  void logout() {
    userEntity = null;
  }
}
