import '../../domain/entities/user_entity.dart';
import '../models/user_model.dart';

class UserEntityAdapter {
  UserEntity fromModel({
    required UserModel userModel,
  }) {
    return UserEntity(
      name: userModel.name,
      userName: userModel.userName,
      email: userModel.email,
      password: userModel.password,
      urlPhoto: userModel.urlPhoto,
    );
  }
}
