class ApiResponse<T> {
  final T? data;
  final int? statusCode;
  final String? statusMessage;

  const ApiResponse({
    this.data,
    this.statusCode,
    this.statusMessage,
  });
}
