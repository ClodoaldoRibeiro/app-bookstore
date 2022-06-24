import '../../../../core/services/api/api_response.dart';
import '../../../../core/services/api/api_service.dart';
import '../../data/datasources/register_user_datasource.dart';
import '../../data/models/user_model.dart';
import '../mappers/user_model_mapper.dart';

class RegisterUserDatasourceImpl implements RegisterUserDatasource {
  final ApiService _apiService;
  final UserModelMapper _userModelMapper;

  const RegisterUserDatasourceImpl({
    required ApiService apiService,
    required UserModelMapper userModelMapper,
  })  : _apiService = apiService,
        _userModelMapper = userModelMapper;

  @override
  Future<UserModel> call({
    required String name,
    required String userName,
    required String email,
    required String password,
  }) async {
    const String path = '/register-user-mok/232222254';
    final ApiResponse<String> jsonResultData = await _apiService.put(
      path,
      headers: {
        "name": name,
        "userName": userName,
        "email": email,
        "password": password,
      },
    );

    return _userModelMapper.fromJson(
      userJson: jsonResultData.data!,
    );
  }
}
