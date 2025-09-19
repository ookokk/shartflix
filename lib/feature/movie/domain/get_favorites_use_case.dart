import 'package:shartflix/feature/movie/data/profile_repository.dart';
import 'package:shartflix/product/model/movie/movie_favorites_list_response_model.dart';

class GetFavoritesUseCase {
  GetFavoritesUseCase(this.repository);
  final ProfileRepository repository;

  Future<MovieFavoritesListResponseModel?> call() async {
    return repository.getFavoritesList();
  }
}
