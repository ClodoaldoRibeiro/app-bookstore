import '../../../../core/services/api/api_response.dart';
import '../../../../core/services/api/api_service.dart';
import '../../data/datasources/login_user_datasource.dart';
import '../../data/models/user_model.dart';
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
  Future<UserModel?> call({
    required String userName,
    required String password,
  }) async {
    const String path = '/get-user-mok/1239754566308563382';
    final ApiResponse<String> jsonResultData = await _apiService.get(
      path,
      headers: {
        "userName": userName,
        "password": password,
      },
    );

    if (jsonResultData.statusCode == 200 || jsonResultData.statusCode == 201) {
      return _loginUserModelMapper.fromJson(
        userJson: jsonResultData.data!,
      );
    }

    if (jsonResultData.statusCode == 400 || jsonResultData.statusCode == 401) {
      return null;
    }

    return null;
  }
}
