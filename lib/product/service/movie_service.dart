import 'package:shartflix/core/const/enums/api_request_method_enum.dart';
import 'package:shartflix/core/const/enums/end_point_enum.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/init/network_manager.dart';
import 'package:shartflix/product/model/movie/movie_fav_response_model.dart';
import 'package:shartflix/product/model/movie/movie_favorites_list_response_model.dart';
import 'package:shartflix/product/model/movie/movie_list_response_model.dart';

class MovieService {
  MovieService._();
  static final MovieService instance = MovieService._();

  Future<MovieFavResponseModel?> favorite({
    required String movieId,
  }) async {
    final cachedToken = await CacheManager.instance.getToken();
    final response = await NetworkManager.instance.baseRequest(
      EndPointEnums.movieFavorite,
      APIRequestMethod.post,
      headers: {'Authorization': 'Bearer $cachedToken'},
      pathParam: movieId,
    );
    if (response == null) return null;
    return MovieFavResponseModel.fromJson(response);
  }

  Future<MovieFavoritesListResponseModel?> favoritesList() async {
    final cachedToken = await CacheManager.instance.getToken();
    final response = await NetworkManager.instance.baseRequest(
      EndPointEnums.movieFavorites,
      APIRequestMethod.get,
      headers: {'Authorization': 'Bearer $cachedToken'},
    );
    if (response == null) return null;
    return MovieFavoritesListResponseModel.fromJson(response);
  }

  Future<MovieListResponseModel?> list({required int page}) async {
    final cachedToken = await CacheManager.instance.getToken();
    final response = await NetworkManager.instance.baseRequest(
      EndPointEnums.movieList,
      APIRequestMethod.get,
      headers: {'Authorization': 'Bearer $cachedToken'},
      queryParameters: {'page': page},
    );

    if (response == null) return null;
    return MovieListResponseModel.fromJson(response);
  }
}
