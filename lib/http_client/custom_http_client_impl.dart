import 'dart:async';
import 'dart:io';

import 'package:core/erros/error_messages.dart';
import 'package:core/http_client/custom_http_client.dart';
import 'package:core/http_client/custom_http_response.dart';
import 'package:core/http_client/interceptor_http.dart';
import 'package:dio/dio.dart';

class CustomHttpClientImpl implements CustomHttpClient {
  final Dio _dio = Dio();
  final Map<String, dynamic>? header;

  CustomHttpClientImpl({this.header}) {
    _dio.options.headers = header;
    _dio.interceptors.add(CustomInterceptors());
  }

  @override
  Future<CustomHttpResponse> get(
    String url, {
    Map<String, dynamic>? heards,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;

    try {
      response = await _dio.get(url, queryParameters: queryParameters);
    } on DioException catch (error) {
      return CustomHttpResponse(
        statusCode: error.response?.statusCode,
        statusMessage: error.response?.statusMessage,
      );
    } on TimeoutException catch (_) {
      return CustomHttpResponse(
        statusMessage: ErrorMessages.errorTimeout,
        timeout: true,
      );
    } on SocketException catch (exception) {
      return CustomHttpResponse(
        statusMessage: exception.message,
      );
    }

    return CustomHttpResponse(
      data: response.data,
      statusCode: response.statusCode,
    );
  }

  @override
  Future<CustomHttpResponse> post(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;

    try {
      response = await _dio.post(
        url,
        data: body,
        queryParameters: queryParameters,
      );
    } on DioException catch (error) {
      return CustomHttpResponse(
        statusCode: error.response?.statusCode,
        statusMessage: error.response?.statusMessage,
      );
    } on TimeoutException catch (_) {
      return CustomHttpResponse(
        statusMessage: ErrorMessages.errorTimeout,
        timeout: true,
      );
    } on SocketException catch (exception) {
      return CustomHttpResponse(
        statusMessage: exception.message,
      );
    }

    return CustomHttpResponse(
      data: response.data,
      statusCode: response.statusCode,
      header: response.headers.map,
    );
  }

  @override
  Future<CustomHttpResponse> put(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;

    try {
      response = await _dio.put(
        url,
        data: body,
        queryParameters: queryParameters,
      );
    } on DioException catch (error) {
      return CustomHttpResponse(
        statusCode: error.response?.statusCode,
        statusMessage: error.response?.statusMessage,
      );
    } on TimeoutException catch (_) {
      return CustomHttpResponse(
        statusMessage: ErrorMessages.errorTimeout,
        timeout: true,
      );
    } on SocketException catch (exception) {
      return CustomHttpResponse(
        statusMessage: exception.message,
      );
    }

    return CustomHttpResponse(
      data: response.data,
      statusCode: response.statusCode,
      header: response.headers.map,
    );
  }
}
