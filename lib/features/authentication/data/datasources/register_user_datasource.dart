import '../models/user_model.dart';

abstract class RegisterUserDatasource {
  Future<UserModel> call({
    required String name,
    required String userName,
    required String email,
    required String password,
  });
}
