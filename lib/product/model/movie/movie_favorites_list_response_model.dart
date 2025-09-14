import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shartflix/product/model/base/base_response_model.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

part 'movie_favorites_list_response_model.freezed.dart';
part 'movie_favorites_list_response_model.g.dart';

@freezed
class MovieFavoritesListResponseModel
    with _$MovieFavoritesListResponseModel {
  factory MovieFavoritesListResponseModel({
    BaseResponseModel? response,
    List<MovieModel?>? data,
  }) = _MovieFavoritesListResponseModel;

  factory MovieFavoritesListResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$MovieFavoritesListResponseModelFromJson(json);
}
