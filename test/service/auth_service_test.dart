import 'package:flutter_test/flutter_test.dart';
import 'package:shartflix/product/model/auth/auth_response_model.dart';
import 'package:shartflix/product/service/auth_service.dart';
import '../mock/mock_user.dart';

void main() {
  final mockUser = MockUser().mockUser1;
  final authService = AuthService.instance;

  group('AuthService Tests', () {
    test('Login should return AuthResponseModel with token', () async {
      final result = await authService.login(
        email: mockUser.data?.email ?? '',
        password: '123456',
      );
      expect(result, isA<AuthResponseModel?>());
      expect(result?.data?.token, isNotNull);
    });

    test('Register should create new user', () async {
      final email =
          'test_${DateTime.now().millisecondsSinceEpoch}@mail.com';
      final result = await authService.register(
        email: email,
        name: 'TestUser',
        password: '123456',
      );

      expect(result, isA<AuthResponseModel?>());
      expect(result?.data?.email, equals(email));
    });

    test('UserProfile should return profile info', () async {
      final result = await authService.userProfile(
        //   token: mockUser.data?.token ?? '',
      );

      expect(result, isA<AuthResponseModel?>());
      expect(result?.data?.email, equals(mockUser.data?.email));
      expect(result?.data?.name, equals(mockUser.data?.name));
    });
  });
}
