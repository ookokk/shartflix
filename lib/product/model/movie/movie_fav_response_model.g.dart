// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_fav_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieFavResponseModelImpl _$$MovieFavResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieFavResponseModelImpl(
      response: json['response'] == null
          ? null
          : BaseResponseModel.fromJson(
              json['response'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : MovieFavDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MovieFavResponseModelImplToJson(
        _$MovieFavResponseModelImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
    };

_$MovieFavDataModelImpl _$$MovieFavDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieFavDataModelImpl(
      movie: json['movie'] == null
          ? null
          : MovieModel.fromJson(json['movie'] as Map<String, dynamic>),
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$MovieFavDataModelImplToJson(
        _$MovieFavDataModelImpl instance) =>
    <String, dynamic>{
      'movie': instance.movie,
      'action': instance.action,
    };
