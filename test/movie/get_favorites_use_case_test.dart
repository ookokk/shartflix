import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shartflix/feature/movie/data/profile_repository.dart';
import 'package:shartflix/feature/movie/domain/get_favorites_use_case.dart';
import 'package:shartflix/product/model/movie/movie_favorites_list_response_model.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late MockProfileRepository mockRepository;
  late GetFavoritesUseCase getFavoritesUseCase;

  setUp(() {
    mockRepository = MockProfileRepository();
    getFavoritesUseCase = GetFavoritesUseCase(mockRepository);
  });

  test('GetFavoritesUseCase returns favorites list', () async {
    final fakeMovies = MovieFavoritesListResponseModel(
      data: [
        MovieModel(id: '1', Title: 'Movie 1'),
        MovieModel(id: '2', Title: 'Movie 2'),
      ],
    );

    when(
      () => mockRepository.getFavoritesList(),
    ).thenAnswer((_) async => fakeMovies);

    final result = await getFavoritesUseCase.call();

    expect(result, isA<MovieFavoritesListResponseModel>());
    expect(result?.data?.length, 2);
    expect(result?.data?[0]?.Title, 'Movie 1');

    verify(() => mockRepository.getFavoritesList()).called(1);
  });

  test(
    'GetFavoritesUseCase returns empty list if repository returns null',
    () async {
      when(
        () => mockRepository.getFavoritesList(),
      ).thenAnswer((_) async => null);

      final result = await getFavoritesUseCase.call();

      expect(result, isNull);
      verify(() => mockRepository.getFavoritesList()).called(1);
    },
  );
}
