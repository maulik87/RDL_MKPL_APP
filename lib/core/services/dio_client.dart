import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as get_x;
import 'package:rdl_market_place_app/core/config/app_exception.dart';
import 'package:rdl_market_place_app/core/config/debug.dart';
import 'package:rdl_market_place_app/core/config/preference.dart';
import 'package:rdl_market_place_app/core/constants/app_constants.dart';
import 'package:rdl_market_place_app/core/constants/end_point_params.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';

/// A callback that returns a Dio response, presumably from a Dio method
/// it has called which performs an HTTP request, such as `dio.get()`,
/// `dio.post()`, etc.
typedef HttpClientRequest<T> = Future<Response<T>> Function();

abstract class IApiClient {
  Future<Response<dynamic>> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Response<dynamic>> post(
    String uri, {
    dynamic data,
    bool? formRequest,
  });

  Future<Response<dynamic>> put(String uri, {dynamic data});


  void updateContentTypeHeader({bool isMultiPart = false});

  void updateAuthorizationHeader();
}

class DioClient implements IApiClient {
  DioClient(this._dio, {required String baseUrl}) : _baseUrl = baseUrl {
    Debug.logE('API KEY - $apiKey');

    _dio
      ..options.baseUrl = _baseUrl
      ..options.contentType = 'application/json'
      ..options.headers = {
        // Params.contentTypeHeader: 'application/x-www-form-urlencoded',
        // Params.acceptHeader: 'application/json',
      };

    _dio.interceptors.add(
      LogInterceptor(
        request: false,
        requestHeader: false,
        responseHeader: false,
        responseBody: true,
      ),
    );

    updateAuthorizationHeader();

    Debug.logE(apiKey.toString());
  }

  final apiKey = Preference.shared.getString(Preference.apiKey);

  final Dio _dio;
  final String _baseUrl;

  @override
  void updateContentTypeHeader({bool isMultiPart = false}) {
    _dio.options.headers[Params.contentTypeHeader] = (isMultiPart)
        ? 'multipart/form-data'
        : 'application/x-www-form-urlencoded';
  }

  @override
  void updateAuthorizationHeader() {
    final accessToken = Preference.shared.getString(Preference.token);
    Debug.logE("accessToken ==> $accessToken");
    if (accessToken != null) {
      _dio.options.headers[Params.authorizationHeader] = "Bearer $accessToken";
    } else {
      _dio.options.headers.remove(Params.authorizationHeader);
    }
  }

  @override
  Future<Response<dynamic>> post(
    String uri, {
    dynamic data,
    bool? formRequest,
  }) async {
    return _mapException(
      () => _dio.post(uri, data: data),
    );
  }

  @override
  Future<Response<dynamic>> put(String uri, {dynamic data}) async {
    return _mapException(
      () => _dio.put(uri, data: data),
    );
  }

  @override
  Future<Response<dynamic>> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return _mapException(
      () =>
          _dio.get<Map<String, dynamic>>(uri, queryParameters: queryParameters),
    );
  }

  Future<Response<T>> _mapException<T>(HttpClientRequest<T> request) async {
    try {
      return await request();
    } on DioError catch (e) {
      if (e.response?.statusCode == StatusCode.unAuthenticate) {
         unawaited(Preference.shared.clearLogout());

         unawaited(get_x.Get.offAllNamed(Routes.login));
      }

      if (e.response != null && e.response?.data is Map) {
        final response = e.response!.data as Map;
        throw AppException(response['message'] as String);
      }

      // Here, we can create a new exception class that doesn't depends on
      rethrow;
    } catch (e) {
      Debug.logE(e.toString());
      rethrow;
    }
  }
}
