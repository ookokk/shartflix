import 'package:shartflix/core/const/env/app_env.dart';

enum EndPointEnums {
  // User
  userProfile('/user/profile'),
  userLogin('/user/login'),
  userRegister('/user/register'),
  userUploadPhoto('/user/upload_photo'),

  // Movies
  movieFavorite('/movie/favorite/'),
  movieFavorites('/movie/favorites'),
  movieList('/movie/list');

  const EndPointEnums(this.value);

  final String value;

  String get fullUrl {
    const baseUrl = AppEnv.baseUrl;
    return '$baseUrl$value';
  }
}
