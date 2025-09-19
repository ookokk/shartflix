import 'dart:io';
import 'package:shartflix/feature/auth/data/auth_service_impl.dart';
import 'package:shartflix/product/model/auth/auth_response_model.dart';
import 'package:shartflix/product/model/user/user_model.dart';

abstract class IAuthRepository {
  Future<AuthResponseModel?> login(String email, String password);
  Future<AuthResponseModel?> register(
    String email,
    String password,
    String name,
  );
  Future<UserModel?> getProfile();
  Future<bool> uploadPhoto(File file);
}

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl(this.authService);
  final IAuthService authService;

  @override
  Future<AuthResponseModel?> login(String email, String password) async {
    final res = await authService.login(email, password);
    if (res?.data == null) return null;
    return res;
  }

  @override
  Future<AuthResponseModel?> register(
    String email,
    String password,
    String name,
  ) async {
    final res = await authService.register(email, password, name);
    if (res?.data == null) return null;
    return res;
  }

  @override
  Future<UserModel?> getProfile() async {
    final res = await authService.profile();
    if (res?.data == null) return null;
    return res?.data;
  }

  @override
  Future<bool> uploadPhoto(File file) async {
    final res = await authService.uploadPhoto(file);
    return res?.response?.code == 200 && res?.data != null;
  }
}
