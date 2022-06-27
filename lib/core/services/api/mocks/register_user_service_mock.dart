import 'dart:convert';

import '../api_response.dart';
import '../api_service.dart';

class RegisterUserServiceMock implements ApiService {
  @override
  Future<ApiResponse<String>> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<List<int>>> downloadFile(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> patch(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> post(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    final String headerName = headers!['name'] as String;
    final String headerUserName = headers['userName'] as String;
    final String headerEmail = headers['email'] as String;
    final String headerPassword = headers['password'] as String;

    var jsonParse = jsonEncode(
      _successResponse(
        name: headerName,
        userName: headerUserName,
        email: headerEmail,
        password: headerPassword,
      ),
    );

    return Future.delayed(
      const Duration(
        seconds: 5,
      ),
    ).then(
      (value) {
        return ApiResponse<String>(
          statusCode: 200,
          data: jsonParse,
        );
      },
    );
  }

  @override
  Future<ApiResponse<String>> put(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    throw UnimplementedError();
  }

  Map<String, dynamic> _successResponse({
    required String name,
    required String userName,
    required String email,
    required String password,
  }) {
    return {
      'name': name,
      'userName': userName,
      'email': email,
      'password': password,
      'urlPhoto':
          'https://cdn.icon-icons.com/icons2/582/PNG/512/boy_icon-icons.com_55048.png',
    };
  }
}
