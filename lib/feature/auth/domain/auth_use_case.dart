import 'package:shartflix/feature/auth/data/auth_service_impl.dart';

class AuthUseCase {
  AuthUseCase(this.authService);
  final IAuthService authService;

  Future<void> login(String email, String password) async {
    final res = await authService.login(email, password);
    if (res == null || res.response?.code != 200) {
      throw Exception(res?.response?.message ?? 'Login failed');
    }
  }

  Future<void> register(String email, String password, String name) async {
    final res = await authService.register(email, password, name);
    if (res == null ||
        (res.response?.code != 201 && res.response?.code != 200)) {
      throw Exception(res?.response?.message ?? 'Register failed');
    }
  }
}
