import 'api_response.dart';

abstract class ApiService {
  Future<ApiResponse<String>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  Future<ApiResponse<String>> post(
    String path, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  Future<ApiResponse<String>> put(
    String path, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  Future<ApiResponse<String>> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  Future<ApiResponse<String>> patch(
    String path, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  Future<ApiResponse<List<int>>> downloadFile(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });
}
