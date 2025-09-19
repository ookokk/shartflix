import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shartflix/feature/auth/data/auth_service_impl.dart';
import 'package:shartflix/feature/auth/domain/auth_use_case.dart';
import 'package:shartflix/product/model/auth/auth_response_model.dart';
import 'package:shartflix/product/model/base/base_response_model.dart';
import 'package:shartflix/product/model/user/user_model.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;
  late AuthUseCase authUseCase;

  setUp(() {
    mockAuthService = MockAuthService();
    authUseCase = AuthUseCase(mockAuthService);
  });

  group('Register UseCase Tests', () {
    test('register success', () async {
      final fakeResponse = AuthResponseModel(
        data: UserModel(token: '123', id: '1'),
        response: BaseResponseModel(code: 201, message: 'Created'),
      );
      when(
        () =>
            mockAuthService.register('test@test.com', 'password', 'Osman'),
      ).thenAnswer((_) async => fakeResponse);
      await authUseCase.register('test@test.com', 'password', 'Osman');
      verify(
        () =>
            mockAuthService.register('test@test.com', 'password', 'Osman'),
      ).called(1);
    });
    test('register failure throws exception', () async {
      when(
        () =>
            mockAuthService.register('test@test.com', 'password', 'Osman'),
      ).thenAnswer((_) async => null);
      expect(
        () async =>
            authUseCase.register('test@test.com', 'password', 'Osman'),
        throwsException,
      );
    });
    test('register with non-200/201 response throws exception', () async {
      final fakeResponse = AuthResponseModel(
        response: BaseResponseModel(code: 400, message: 'Bad Request'),
      );
      when(
        () => mockAuthService.register('fail@test.com', '1234', 'Fail'),
      ).thenAnswer((_) async => fakeResponse);
      expect(
        () async => authUseCase.register('fail@test.com', '1234', 'Fail'),
        throwsException,
      );
    });
  });
}
