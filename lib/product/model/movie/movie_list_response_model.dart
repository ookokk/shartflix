import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shartflix/product/model/base/base_response_model.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

part 'movie_list_response_model.freezed.dart';
part 'movie_list_response_model.g.dart';

@freezed
class MovieListResponseModel with _$MovieListResponseModel {
  factory MovieListResponseModel({
    BaseResponseModel? response,
    MovieListData? data,
  }) = _MovieListResponseModel;

  factory MovieListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieListResponseModelFromJson(json);
}

@freezed
class MovieListData with _$MovieListData {
  factory MovieListData({
    List<MovieModel>? movies,
    PaginationModel? pagination,
  }) = _MovieListData;

  factory MovieListData.fromJson(Map<String, dynamic> json) =>
      _$MovieListDataFromJson(json);
}

@freezed
class PaginationModel with _$PaginationModel {
  factory PaginationModel({
    int? totalCount,
    int? perPage,
    int? maxPage,
    int? currentPage,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
