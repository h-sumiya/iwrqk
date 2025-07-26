import 'dart:convert';

import 'package:cloudflare_interceptor/cloudflare_interceptor.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;

import '../../../const/iwara.dart';
import 'refresh_token_interceptor.dart';

dynamic tryToJson(dynamic data) {
  if (data is String) {
    final Document document = parse(data);
    final element = document.querySelector("pre");
    if (element != null) {
      final String jsonString = element.text;
      debugPrint("Automatically converted to JSON string: $jsonString");
      return json.decode(jsonString);
    } else {
      return data;
    }
  } else {
    return data;
  }
}

class NetworkProvider {
  static final NetworkProvider _singleton = NetworkProvider._internal();

  factory NetworkProvider() {
    return _singleton;
  }

  late Dio _dio;
  BuildContext? _context;

  NetworkProvider._internal() {
    final cookieJar = CookieJar();
    _dio = Dio();

    _dio.options.validateStatus = (status) => (status ?? 0) < 500;
    // _dio.options.headers = {
    //   "origin": IwaraConst.origin,
    //   "referer": IwaraConst.referer,
    //   "accept-encoding": "gzip",
    //   "user-agent":
    //       "Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36",
    // };
    _dio.options.sendTimeout = const Duration(seconds: 15);
    _dio.options.receiveTimeout = const Duration(seconds: 15);
    _dio.options.connectTimeout = const Duration(seconds: 15);
    _dio.interceptors.add(CookieManager(cookieJar));
    if (_context != null) {
      _dio.interceptors.add(
        CloudflareInterceptor(
          dio: _dio,
          cookieJar: cookieJar,
          context: _context!,
        ),
      );
    }
    _dio.interceptors.add(RefreshTokenInterceptor(_dio));
    _dio.interceptors.add(LogInterceptor());
  }

  void setContext(BuildContext context) {
    _context = context;
    _reinitializeWithContext();
  }

  void _reinitializeWithContext() {
    if (_context != null) {
      final cookieJar =
          _dio.interceptors.whereType<CookieManager>().firstOrNull?.cookieJar;
      _dio.interceptors.removeWhere(
        (interceptor) => interceptor is CloudflareInterceptor,
      );
      _dio.interceptors.insert(
        1,
        CloudflareInterceptor(
          dio: _dio,
          cookieJar: cookieJar ?? CookieJar(),
          context: _context!,
        ),
      );
    }
  }

  void dispose() {
    _dio.close();
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) =>
      getFullUrl(
        "https://${IwaraConst.apiHost}$path",
        queryParameters: queryParameters,
        headers: headers,
      );

  Future<Response<dynamic>> getFullUrl(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    final response = await _dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );

    return Response(
      data: tryToJson(response.data),
      requestOptions: response.requestOptions,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      headers: response.headers,
      isRedirect: response.isRedirect,
      redirects: response.redirects,
    );
  }

  Future<Response<dynamic>> postFullUrl(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    final response = await _dio.post(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers, contentType: Headers.jsonContentType),
      data: data,
    );

    return Response(
      data: tryToJson(response.data),
      requestOptions: response.requestOptions,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      headers: response.headers,
      isRedirect: response.isRedirect,
      redirects: response.redirects,
    );
  }

  Future<Response> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) =>
      postFullUrl(
        "https://${IwaraConst.apiHost}$path",
        queryParameters: queryParameters,
        headers: headers,
        data: data,
      );

  Future<Response> putFullUrl(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    final response = await _dio.put(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
      data: data,
    );

    return response;
  }

  Future<Response> put(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) =>
      putFullUrl(
        "https://${IwaraConst.apiHost}$path",
        queryParameters: queryParameters,
        headers: headers,
        data: data,
      );

  Future<Response> deleteFullUrl(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    final response = await _dio.delete(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers, contentType: Headers.jsonContentType),
      data: data,
    );

    return response;
  }

  Future<Response> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) =>
      deleteFullUrl(
        "https://${IwaraConst.apiHost}$path",
        queryParameters: queryParameters,
        headers: headers,
        data: data,
      );
}
