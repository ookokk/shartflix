import 'dart:io';
import 'package:shartflix/feature/auth/data/photo_upload_repository.dart';

class UploadPhotoUseCase {
  UploadPhotoUseCase(this.repository);
  final PhotoUploadRepository repository;

  Future<bool> call(File file) async {
    return repository.uploadPhoto(file);
  }
}
