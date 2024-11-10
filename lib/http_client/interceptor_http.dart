import 'dart:developer';

import 'package:dio/dio.dart';

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('----------------------------------------------------------------');
    log('REQUEST [${options.method}] => PATH: ${options.path}');
    log('HEADERS: ${options.headers}');
    log('----------------------------------------------------------------');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('----------------------------------------------------------------');
    log('RESPONSE [${response.statusCode}] => PATH: ${response.requestOptions.path}');
    log(response.data.toString());
    log('----------------------------------------------------------------');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    log('----------------------------------------------------------------');

    log('ERROR [${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    log(err.error.toString());
    log(err.stackTrace.toString());
    log('----------------------------------------------------------------');

    super.onError(err, handler);
  }
}
