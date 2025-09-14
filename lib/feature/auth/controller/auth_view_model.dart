import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/product/model/auth/auth_response_model.dart';
import 'package:shartflix/product/service/auth_service.dart';

class AuthViewModel {
  Future<AuthResponseModel?> login({
    required String email,
    required String password,
  }) async {
    return AuthService.instance.login(email: email, password: password);
  }

  Future<AuthResponseModel?> register({
    required String email,
    required String name,
    required String password,
  }) async {
    return AuthService.instance.register(
      email: email,
      name: name,
      password: password,
    );
  }

  Future<AuthResponseModel?> userProfile({
    required String email,
    required String name,
    required String password,
  }) async {
    return AuthService.instance.register(
      email: email,
      name: name,
      password: password,
    );
  }

  Future<void> signOut(BuildContext context, WidgetRef ref) async {
    await CacheManager.instance.clearToken();
    await context.router.pushAndPopUntil(
      const LoginRoute(),
      predicate: (_) => false,
    );
  }
}
