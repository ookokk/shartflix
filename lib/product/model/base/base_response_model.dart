import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_model.freezed.dart';
part 'base_response_model.g.dart';

@freezed
class BaseResponseModel with _$BaseResponseModel {
  factory BaseResponseModel({int? code, String? message}) =
      _BaseResponseModel;

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseModelFromJson(json);
}
