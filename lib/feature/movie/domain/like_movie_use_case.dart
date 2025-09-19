import 'package:shartflix/feature/movie/data/movie_repository_impl.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class LikeMovieUseCase {
  LikeMovieUseCase(this.repository);
  final IMovieRepository repository;

  Future<MovieModel?> call(MovieModel movie) async {
    final result = await repository.likeMovie(movie.id!);
    if (result != null) {
      final (updatedMovie, action) = result;
      return movie.copyWith(isFavorite: action == 'liked');
    }
    return null;
  }
}
