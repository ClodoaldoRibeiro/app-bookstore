import 'package:bookstore/features/authentication/data/datasources/login_user_datasource.dart';
import 'package:bookstore/features/authentication/data/models/user_model.dart';

import '../../../../core/services/api/api_service.dart';
import '../mappers/login_user_model_mapper.dart';

class LoginUserDatasourceImpl implements LoginUserDatasource {
  final ApiService _apiService;
  final LoginUserModelMapper _loginUserModelMapper;

  const LoginUserDatasourceImpl({
    required ApiService apiService,
    required LoginUserModelMapper loginUserModelMapper,
  })  : _apiService = apiService,
        _loginUserModelMapper = loginUserModelMapper;

  @override
  Future<UserModel> call({
    required String userName,
    required String password,
  }) async {
    const String path = '/get-user-mok/1239754566308563382';
    final jsonResultData = await _apiService.get(
      path,
      headers: {
        "userName": userName,
        "password": password,
      },
    );

    return _loginUserModelMapper.fromJson(
      userJson: jsonResultData.data!,
    );
  }
}
