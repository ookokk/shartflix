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

  test('login success', () async {
    final fakeResponse = AuthResponseModel(
      data: UserModel(token: '123', id: '1'),
      response: BaseResponseModel(code: 200, message: 'OK'),
    );

    when(
      () => mockAuthService.login('test@test.com', 'password'),
    ).thenAnswer((_) async => fakeResponse);

    await authUseCase.login('test@test.com', 'password');

    verify(
      () => mockAuthService.login('test@test.com', 'password'),
    ).called(1);
  });

  test('login failure throws exception', () async {
    when(
      () => mockAuthService.login('test@test.com', 'wrong'),
    ).thenAnswer((_) async => null);

    expect(
      () async => authUseCase.login('test@test.com', 'wrong'),
      throwsException,
    );
  });
}
