import 'dart:convert';

import '../../infra/models/user_model.dart';

class LoginUserModelMapper {
  UserModel fromMap({
    required Map<String, dynamic> userMap,
  }) {
    return UserModel(
      name: userMap['name'] ?? '',
      userName: userMap['userName'] ?? '',
      email: userMap['email'] ?? '',
      password: userMap['password'] ?? '',
      urlPhoto: userMap['urlPhoto'] ?? '',
    );
  }

  UserModel fromJson({
    required String userJson,
  }) {
    final userMap = jsonDecode(userJson);

    return fromMap(
      userMap: userMap,
    );
  }
}
