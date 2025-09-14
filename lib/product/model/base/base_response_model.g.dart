// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseModelImpl _$$BaseResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseModelImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BaseResponseModelImplToJson(
        _$BaseResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
