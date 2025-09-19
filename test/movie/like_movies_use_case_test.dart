import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shartflix/feature/movie/data/movie_repository_impl.dart';
import 'package:shartflix/feature/movie/domain/like_movie_use_case.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class MockMovieRepository extends Mock implements IMovieRepository {}

void main() {
  late MockMovieRepository mockRepository;
  late LikeMovieUseCase likeMovieUseCase;

  setUp(() {
    mockRepository = MockMovieRepository();
    likeMovieUseCase = LikeMovieUseCase(mockRepository);
  });

  test('LikeMovieUseCase likes a movie', () async {
    final movie = MovieModel(
      id: '1',
      Title: 'Test Movie',
      isFavorite: false,
    );
    final updatedMovie = MovieModel(id: '1', Title: 'Test Movie');

    when(
      () => mockRepository.likeMovie(movie.id!),
    ).thenAnswer((_) async => (updatedMovie, 'liked'));
    final result = await likeMovieUseCase.call(movie);

    expect(result, isNotNull);
    expect(result?.isFavorite, true);

    verify(() => mockRepository.likeMovie(movie.id!)).called(1);
  });

  test('LikeMovieUseCase unlikes a movie', () async {
    final movie = MovieModel(
      id: '2',
      Title: 'Another Movie',
      isFavorite: true,
    );
    final updatedMovie = MovieModel(id: '2', Title: 'Another Movie');

    when(
      () => mockRepository.likeMovie(movie.id!),
    ).thenAnswer((_) async => (updatedMovie, 'unliked'));

    final result = await likeMovieUseCase.call(movie);

    expect(result, isNotNull);
    expect(result?.isFavorite, false);

    verify(() => mockRepository.likeMovie(movie.id!)).called(1);
  });

  test(
    'LikeMovieUseCase returns null if repository returns null',
    () async {
      final movie = MovieModel(
        id: '3',
        Title: 'Null Movie',
        isFavorite: false,
      );

      when(
        () => mockRepository.likeMovie(movie.id!),
      ).thenAnswer((_) async => null);

      final result = await likeMovieUseCase.call(movie);

      expect(result, isNull);
      verify(() => mockRepository.likeMovie(movie.id!)).called(1);
    },
  );
}
