import 'package:shartflix/feature/movie/data/movie_service_impl.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

abstract class IMovieRepository {
  Future<List<MovieModel>> fetchMovies(int page);
  Future<(MovieModel movie, String action)?> likeMovie(String movieId);
  Future<List<MovieModel>> fetchFavorites();
}

class MovieRepositoryImpl implements IMovieRepository {
  MovieRepositoryImpl(this.movieService);
  final IMovieService movieService;

  @override
  Future<List<MovieModel>> fetchMovies(int page) async {
    final response = await movieService.list(page);
    return response?.data?.movies ?? [];
  }

  @override
  Future<(MovieModel movie, String action)?> likeMovie(
    String movieId,
  ) async {
    final response = await movieService.favorite(movieId);
    final movie = response?.data?.movie;
    final action = response?.data?.action;
    if (movie != null && action != null) return (movie, action);
    return null;
  }

  @override
  Future<List<MovieModel>> fetchFavorites() async {
    final response = await movieService.favoritesList();
    return response?.data?.whereType<MovieModel>().toList() ?? [];
  }
}
