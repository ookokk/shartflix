import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shartflix/feature/movie/data/movie_repository_impl.dart';
import 'package:shartflix/feature/movie/domain/fetch_movies_use_case.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class MockMovieRepository extends Mock implements MovieRepositoryImpl {}

void main() {
  late MockMovieRepository mockRepository;
  late FetchMoviesUseCase fetchMoviesUseCase;

  setUp(() {
    mockRepository = MockMovieRepository();
    fetchMoviesUseCase = FetchMoviesUseCase(mockRepository);
  });

  test('FetchMoviesUseCase returns list of movies', () async {
    final fakeMovies = [
      MovieModel(id: '1', Title: 'Movie 1'),
      MovieModel(id: '2', Title: 'Movie 2'),
    ];

    when(
      () => mockRepository.fetchMovies(1),
    ).thenAnswer((_) async => fakeMovies);

    final result = await fetchMoviesUseCase.call();

    expect(result, isA<List<MovieModel>>());
    expect(result.length, 2);
    expect(result[0].Title, 'Movie 1');

    verify(() => mockRepository.fetchMovies(1)).called(1);
  });

  test(
    'FetchMoviesUseCase returns empty list if repository returns empty',
    () async {
      when(
        () => mockRepository.fetchMovies(1),
      ).thenAnswer((_) async => []);

      final result = await fetchMoviesUseCase.call();

      expect(result, isEmpty);
      verify(() => mockRepository.fetchMovies(1)).called(1);
    },
  );
}
