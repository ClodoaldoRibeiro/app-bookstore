import '../../../../core/services/api/api_response.dart';
import '../../../../core/services/api/api_service.dart';
import '../../data/datasources/login_user_datasource.dart';
import '../../data/models/user_model.dart';
import '../mappers/user_model_mapper.dart';

class LoginUserDatasourceImpl implements LoginUserDatasource {
  final ApiService _apiService;
  final UserModelMapper _userModelMapper;

  const LoginUserDatasourceImpl({
    required ApiService apiService,
    required UserModelMapper userModelMapper,
  })  : _apiService = apiService,
        _userModelMapper = userModelMapper;

  @override
  Future<UserModel?> call({
    required String userName,
    required String password,
  }) async {
    const String path = "https://parseapi.back4app.com/service-login";

    final ApiResponse<String> jsonResultData = await _apiService.get(
      path,
      headers: {
        "userName": userName,
        "password": password,
      },
    );

    if (jsonResultData.statusCode == 200 || jsonResultData.statusCode == 201) {
      return _userModelMapper.fromJson(
        userJson: jsonResultData.data!,
      );
    }

    if (jsonResultData.statusCode == 400 || jsonResultData.statusCode == 401) {
      return null;
    }

    return null;
  }
}
