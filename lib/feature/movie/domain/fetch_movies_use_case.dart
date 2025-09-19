import 'package:shartflix/feature/movie/data/movie_repository_impl.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class FetchMoviesUseCase {
  FetchMoviesUseCase(this.repository);
  final MovieRepositoryImpl repository;

  Future<List<MovieModel>> call({int page = 1}) async {
    final res = await repository.fetchMovies(page);
    return res;
  }
}
