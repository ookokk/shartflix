// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieListResponseModelImpl _$$MovieListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieListResponseModelImpl(
      response: json['response'] == null
          ? null
          : BaseResponseModel.fromJson(
              json['response'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : MovieListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MovieListResponseModelImplToJson(
        _$MovieListResponseModelImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
    };

_$MovieListDataImpl _$$MovieListDataImplFromJson(Map<String, dynamic> json) =>
    _$MovieListDataImpl(
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MovieListDataImplToJson(_$MovieListDataImpl instance) =>
    <String, dynamic>{
      'movies': instance.movies,
      'pagination': instance.pagination,
    };

_$PaginationModelImpl _$$PaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationModelImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
      maxPage: (json['maxPage'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationModelImplToJson(
        _$PaginationModelImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'perPage': instance.perPage,
      'maxPage': instance.maxPage,
      'currentPage': instance.currentPage,
    };
