import 'package:core/http_client/custom_http_response.dart';

abstract class CustomHttpClient {
  Future<CustomHttpResponse> get(
    String url, {
    Map<String, dynamic>? heards,
    Map<String, dynamic>? queryParameters,
  });

  Future<CustomHttpResponse> post(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  });

  Future<CustomHttpResponse> put(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  });
}
