import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shartflix/product/model/base/base_response_model.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  factory AuthResponseModel({
    BaseResponseModel? response,
    UserModel? data,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: '_id') String? sId,
    String? id,
    String? name,
    String? email,
    String? photoUrl,
    String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
