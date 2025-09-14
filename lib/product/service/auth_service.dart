import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shartflix/core/const/enums/api_request_method_enum.dart';
import 'package:shartflix/core/const/enums/end_point_enum.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/init/network_manager.dart';
import 'package:shartflix/product/model/auth/auth_response_model.dart';

class AuthService {
  AuthService._();
  static final AuthService instance = AuthService._();

  Future<AuthResponseModel?> login({
    required String email,
    required String password,
  }) async {
    final response = await NetworkManager.instance.baseRequest(
      EndPointEnums.userLogin,
      APIRequestMethod.post,
      data: {'email': email.trim(), 'password': password},
    );
    if (response == null) return null;
    final authResponse = AuthResponseModel.fromJson(response);
    if (authResponse.data?.token != null) {
      await CacheManager.instance.setToken(authResponse.data!.token!);
    }
    return authResponse;
  }

  Future<AuthResponseModel?> register({
    required String email,
    required String name,
    required String password,
  }) async {
    final response = await NetworkManager.instance.baseRequest(
      EndPointEnums.userRegister,
      APIRequestMethod.post,
      data: {'email': email.trim(), 'password': password, 'name': name},
    );
    if (response == null) return null;
    final authResponse = AuthResponseModel.fromJson(response);
    if (authResponse.data?.token != null) {
      await CacheManager.instance.setToken(authResponse.data!.token!);
    }
    return authResponse;
  }

  Future<AuthResponseModel?> userProfile() async {
    final cachedToken = await CacheManager.instance.getToken();
    final response = await NetworkManager.instance.baseRequest(
      EndPointEnums.userProfile,
      APIRequestMethod.get,
      headers: {'Authorization': 'Bearer $cachedToken'},
    );
    if (response == null) return null;
    return AuthResponseModel.fromJson(response);
  }

  Future<AuthResponseModel?> uploadPhoto({required File file}) async {
    final cachedToken = await CacheManager.instance.getToken();

    final fileName = file.path.split('/').last;
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path, filename: fileName),
    });
    final response = await NetworkManager.instance.formDataPost(
      EndPointEnums.userUploadPhoto,
      body: formData,
      headers: {'Authorization': 'Bearer $cachedToken'},
    );
    if (response == null) return null;
    return AuthResponseModel.fromJson(response);
  }
}
