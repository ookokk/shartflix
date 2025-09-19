import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_upload_state.freezed.dart';

@freezed
class PhotoUploadState with _$PhotoUploadState {
   factory PhotoUploadState({
    File? image,
    @Default(false) bool isImagePicked,
    @Default(false) bool isLoading,
    @Default(false) bool isImageUploaded,
  }) = _PhotoUploadState;
}
