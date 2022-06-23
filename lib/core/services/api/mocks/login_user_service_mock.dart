import 'dart:convert';

import '../api_response.dart';
import '../api_service.dart';

class LoginUserServiceMock implements ApiService {
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
  }) async {
    const String password = '123456';
    final String headerPasswprd = headers!['password'] as String;

    if (headerPasswprd == password) {
      var jsonParse = jsonEncode(
        _successResponse(),
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

    var jsonParse = jsonEncode(
      _errorResponse(),
    );

    return Future.delayed(
      const Duration(
        seconds: 5,
      ),
    ).then(
      (value) {
        return ApiResponse<String>(
          statusCode: 401,
          data: jsonParse,
        );
      },
    );
  }

  Map<String, dynamic> _errorResponse() {
    return {
      "message": "Login ou senha invalido",
    };
  }

  Map<String, dynamic> _successResponse() {
    return {
      'name': 'Jose da Silca',
      'userName': 'jose.dasilva',
      'email': 'jose_silva@gmail.com',
      'password': '123456',
      'urlPhoto': 'https://cdn.icon-icons.com/icons2/582/PNG/512/boy_icon-icons.com_55048.png',
    };
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
    throw UnimplementedError();
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
}
