import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shartflix/product/service/movie_service.dart';
import '../mock/mock_user.dart';

void main() {
  final movieService = MovieService.instance;
  //final mockUser = MockUser().mockUser1;

  group('MovieService Real API Tests', () {
    test('favorite should toggle favorite status', () async {
      final result = await movieService.favorite(
        movieId: MockUser().mockMovieId,
        //token: mockUser.data?.token ?? '',
      );

      expect(result, isNotNull);
      expect(result?.response?.code, 200);
      expect(result?.data?.movie, isNotNull);
      expect(result?.data?.action, anyOf('favorited', 'unfavorited'));

      debugPrint(
        'Favorite response action: ${result?.data?.action}, movie title: ${result?.data?.movie?.Title}',
      );
    });

    test('favoritesList should return list of favorite movies', () async {
      final result = await movieService.favoritesList(
        //token: mockUser.data?.token ?? '',
      );

      final movies = result?.data ?? [];

      expect(result, isNotNull);
      expect(movies, isNotEmpty);

      debugPrint(
        'Favorites list: ${movies.map((m) => m?.Title).toList()}',
      );
    });

    test('list should return all movies', () async {
      final result = await movieService.list(
        page: 1,
        //  token: mockUser.data?.token ?? '',
      );

      final movies = result?.data?.movies ?? [];

      expect(result, isNotNull);
      expect(
        movies,
        isNotEmpty,
        reason: 'API returned empty or null movie list',
      );

      debugPrint('All movies: ${movies.map((m) => m.Title).toList()}');
    });
  });
}
