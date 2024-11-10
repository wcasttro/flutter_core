import 'package:core/http_client/custom_http_response.dart';

abstract class CustomHttpClient {
  Future<CustomHttpResponse> get(String url, {Map<String, dynamic>? heards});
  Future<CustomHttpResponse> post(String url, {Map? body});
}
