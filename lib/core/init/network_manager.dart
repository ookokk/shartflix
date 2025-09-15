import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/enums/api_request_method_enum.dart';
import 'package:shartflix/core/const/enums/end_point_enum.dart';
import 'package:shartflix/core/const/env/app_env.dart';

class NetworkManager {
  NetworkManager._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppEnv.baseUrl,
        connectTimeout: const Duration(seconds: 8),
        receiveTimeout: const Duration(seconds: 8),
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ),
    );
  }

  static late final Dio _dio;
  static final instance = NetworkManager._();

  Future<Map<String, dynamic>?> baseRequest(
    EndPointEnums endPoint,
    APIRequestMethod method, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    String? pathParam,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final url =
          '${AppEnv.baseUrl}${endPoint.value}'
          '${pathParam ?? ''}';
      final response = await _dio.request<Map<String, dynamic>>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(method: method.value, headers: headers),
      );
     // debugPrint(response.toString());
      return response.data;
    } on DioException catch (e) {
      debugPrint('Dio error: ${e.message}');
      if (e.response != null) {
        debugPrint('Dio error response data: ${e.response?.data}');
      }
      return null;
    }
  }

  Future<Map<String, dynamic>?> formDataPost(
    EndPointEnums endPoint, {
    FormData? body,
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    void Function(int, int)? onSendProgress,
  }) async {
    try {
      final url = '${AppEnv.baseUrl}${endPoint.value}';
      final response = await _dio.post<Map<String, dynamic>>(
        url,
        data: body,
        queryParameters: queryParameters,
        options: Options(responseType: responseType, headers: headers),
        onSendProgress: onSendProgress,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        debugPrint('Dio error form data:${response.data}');
        return null;
      }
    } on DioException catch (e) {
      debugPrint('Dio error form data: ${e.message}');
      if (e.response != null) {
        debugPrint('Dio error form data post :${e.response?.data}');
      }
      return null;
    }
  }
}
