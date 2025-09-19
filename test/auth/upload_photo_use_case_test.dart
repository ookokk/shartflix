import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shartflix/feature/auth/data/photo_upload_repository.dart';
import 'package:shartflix/feature/auth/domain/upload_photo_use_case.dart';

class MockPhotoUploadRepository extends Mock
    implements PhotoUploadRepository {}

class MockFile extends Mock implements File {}

void main() {
  late MockPhotoUploadRepository mockRepository;
  late UploadPhotoUseCase uploadPhotoUseCase;
  late MockFile mockFile;

  setUp(() {
    mockRepository = MockPhotoUploadRepository();
    uploadPhotoUseCase = UploadPhotoUseCase(mockRepository);
    mockFile = MockFile();
  });

  test('uploadPhoto returns true on success', () async {
    when(
      () => mockRepository.uploadPhoto(mockFile),
    ).thenAnswer((_) async => true);

    final result = await uploadPhotoUseCase.call(mockFile);

    expect(result, true);
    verify(() => mockRepository.uploadPhoto(mockFile)).called(1);
  });

  test('uploadPhoto returns false on failure', () async {
    when(
      () => mockRepository.uploadPhoto(mockFile),
    ).thenAnswer((_) async => false);

    final result = await uploadPhotoUseCase.call(mockFile);

    expect(result, false);
    verify(() => mockRepository.uploadPhoto(mockFile)).called(1);
  });
}
