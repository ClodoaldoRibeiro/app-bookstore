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
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<List<int>>> downloadFile(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    // TODO: implement downloadFile
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    final dataEncode = {
      "name": "Jose da Silca",
      "userName": "jose.dasilva",
      "email": "jose_silva@gmail.com",
      "password": "123456",
      "urlPhoto":
          "https://cdn.icon-icons.com/icons2/582/PNG/512/boy_icon-icons.com_55048.png",
    };

    final data = jsonEncode(
      dataEncode,
    );

    return Future.delayed(
      const Duration(
        seconds: 4,
      ),
    ).then(
      (value) => ApiResponse<String>(
        data: data,
      ),
    );
  }

  @override
  Future<ApiResponse<String>> patch(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> post(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<String>> put(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
