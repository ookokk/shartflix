import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shartflix/core/const/enums/api_request_method_enum.dart';
import 'package:shartflix/core/const/enums/end_point_enum.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/init/network_manager.dart';
import 'package:shartflix/product/model/auth/auth_response_model.dart';

abstract class IAuthService {
  Future<AuthResponseModel?> login(String email, String password);
  Future<AuthResponseModel?> register(
    String email,
    String password,
    String name,
  );
  Future<AuthResponseModel?> profile();
  Future<AuthResponseModel?> uploadPhoto(File file);
}

class AuthServiceImpl implements IAuthService {
  AuthServiceImpl(this.networkManager, this.cacheManager);
  final NetworkManager networkManager;
  final CacheManager cacheManager;

  @override
  Future<AuthResponseModel?> login(String email, String password) async {
    final response = await networkManager.baseRequest(
      EndPointEnums.userLogin,
      APIRequestMethod.post,
      data: {'email': email, 'password': password},
    );
    if (response == null) return null;
    final model = AuthResponseModel.fromJson(response);
    if (model.data?.token != null) {
      await cacheManager.setToken(model.data!.token!);
    }
    return model;
  }

  @override
  Future<AuthResponseModel?> register(
    String email,
    String password,
    String name,
  ) async {
    final response = await networkManager.baseRequest(
      EndPointEnums.userRegister,
      APIRequestMethod.post,
      data: {'email': email, 'password': password, 'name': name},
    );
    if (response == null) return null;
    return AuthResponseModel.fromJson(response);
  }

  @override
  Future<AuthResponseModel?> profile() async {
    final token = await cacheManager.getToken();
    final response = await networkManager.baseRequest(
      EndPointEnums.userProfile,
      APIRequestMethod.get,
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response == null) return null;
    return AuthResponseModel.fromJson(response);
  }

  @override
  Future<AuthResponseModel?> uploadPhoto(File file) async {
    final token = await cacheManager.getToken();
    final fileName = file.path.split('/').last;
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path, filename: fileName),
    });
    final response = await networkManager.formDataPost(
      EndPointEnums.userUploadPhoto,
      body: formData,
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response == null) return null;
    return AuthResponseModel.fromJson(response);
  }
}
