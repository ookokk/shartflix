import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shartflix/product/model/base/base_response_model.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

part 'movie_fav_response_model.freezed.dart';
part 'movie_fav_response_model.g.dart';

@freezed
class MovieFavResponseModel with _$MovieFavResponseModel {
  factory MovieFavResponseModel({
    BaseResponseModel? response,
    MovieFavDataModel? data,
  }) = _MovieFavResponseModel;

  factory MovieFavResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieFavResponseModelFromJson(json);
}

@freezed
class MovieFavDataModel with _$MovieFavDataModel {
  factory MovieFavDataModel({
    MovieModel? movie,
    String? action, // favorited // unfavorited
  }) = _MovieFavDataModel;

  factory MovieFavDataModel.fromJson(Map<String, dynamic> json) =>
      _$MovieFavDataModelFromJson(json);
}
