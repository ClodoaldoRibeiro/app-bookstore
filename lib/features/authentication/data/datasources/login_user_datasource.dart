import '../models/user_model.dart';

abstract class LoginUserDatasource {
  Future<UserModel> call({
    required String userName,
    required String password,
  });
}
