import 'dart:io';
import 'package:shartflix/feature/auth/data/auth_repository_impl.dart';

class PhotoUploadRepository {
  PhotoUploadRepository(this.authRepository);
  final IAuthRepository authRepository;

  Future<bool> uploadPhoto(File file) async {
    return authRepository.uploadPhoto(file);
  }
}
