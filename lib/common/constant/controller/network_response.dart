class NetworkResponse {
  final bool isSuccess;
  final String? errorMessage;
   int statusCode;
  final dynamic jsonResponse;
  NetworkResponse({
      required this.isSuccess,
    this.errorMessage,
    this.statusCode = 1,
    this.jsonResponse,
  });

  
}
