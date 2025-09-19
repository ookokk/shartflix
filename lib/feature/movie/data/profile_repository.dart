import 'package:shartflix/feature/auth/data/auth_repository_impl.dart';
import 'package:shartflix/feature/movie/data/movie_service_impl.dart';
import 'package:shartflix/product/model/movie/movie_favorites_list_response_model.dart';
import 'package:shartflix/product/model/user/user_model.dart';

abstract class ProfileRepository {
  Future<UserModel?> getCurrentUser();
  Future<MovieFavoritesListResponseModel?> getFavoritesList();
}

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({
    required this.authRepository,
    required this.movieService,
  });
  final IAuthRepository authRepository;
  final MovieServiceImpl movieService;

  @override
  Future<UserModel?> getCurrentUser() {
    return authRepository.getProfile();
  }

  @override
  Future<MovieFavoritesListResponseModel?> getFavoritesList() {
    return movieService.favoritesList();
  }
}
