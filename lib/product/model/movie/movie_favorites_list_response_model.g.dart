// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_favorites_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieFavoritesListResponseModelImpl
    _$$MovieFavoritesListResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$MovieFavoritesListResponseModelImpl(
          response: json['response'] == null
              ? null
              : BaseResponseModel.fromJson(
                  json['response'] as Map<String, dynamic>),
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : MovieModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$MovieFavoritesListResponseModelImplToJson(
        _$MovieFavoritesListResponseModelImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
    };
