import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shartflix/feature/auth/domain/get_profile_use_case.dart';
import 'package:shartflix/feature/movie/data/profile_repository.dart';
import 'package:shartflix/product/model/user/user_model.dart';

class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late MockProfileRepository mockRepository;
  late GetProfileUseCase getProfileUseCase;

  setUp(() {
    mockRepository = MockProfileRepository();
    getProfileUseCase = GetProfileUseCase(mockRepository);
  });

  test('getProfile returns user successfully', () async {
    final fakeUser = UserModel(id: '1', token: '123', name: 'Osman');

    when(
      () => mockRepository.getCurrentUser(),
    ).thenAnswer((_) async => fakeUser);

    final result = await getProfileUseCase.call();

    expect(result, isA<UserModel>());
    expect(result?.id, '1');
    verify(() => mockRepository.getCurrentUser()).called(1);
  });

  test('getProfile returns null', () async {
    when(
      () => mockRepository.getCurrentUser(),
    ).thenAnswer((_) async => null);

    final result = await getProfileUseCase.call();

    expect(result, isNull);
    verify(() => mockRepository.getCurrentUser()).called(1);
  });
}
