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
}
