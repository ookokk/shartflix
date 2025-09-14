import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shartflix/feature/photo_upload/controller/photo_upload_state.dart';
import 'package:shartflix/feature/profile/controller/profile_view_model.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/service/auth_service.dart';
import 'package:shartflix/product/widget/dialog/information_toast.dart';
import 'package:shartflix/product/widget/dialog/warning_alert.dart';

class PhotoUploadViewModel extends AutoDisposeNotifier<PhotoUploadState> {
  @override
  PhotoUploadState build() {
    return PhotoUploadState();
  }

  Future<void> pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      requestFullMetadata: false,
      source: ImageSource.gallery,
      imageQuality: 55,
    );
    if (pickedFile == null) return;
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: pickedFile.path,
      compressQuality: 75,
      uiSettings: [
        AndroidUiSettings(
          aspectRatioPresets: [CropAspectRatioPreset.square],
        ),
        IOSUiSettings(aspectRatioPresets: [CropAspectRatioPreset.square]),
      ],
    );

    if (croppedFile != null) {
      state = state.copyWith(
        image: File(croppedFile.path),
        isImagePicked: true,
      );
    }
  }

  Future<bool> uploadPhoto(BuildContext context, WidgetRef ref) async {
    if (state.image == null) return false;
    state = state.copyWith(isLoading: true);
    final res = await AuthService.instance.uploadPhoto(file: state.image!);
    state = state.copyWith(isLoading: false);
    if (res?.response?.code == 200) {
      InformationToast().show(context, LocaleKeys.success.tr());
      await ref.read(profileProvider.notifier).fetchInitial();
      state = state.copyWith(isImageUploaded: true);
      return true;
    } else {
      WarningAlert().show(
        context,
        LocaleKeys.an_error_occurred.tr(),
        true,
      );
      return false;
    }
  }
}

final photoUploadProvider =
    AutoDisposeNotifierProvider<PhotoUploadViewModel, PhotoUploadState>(
      PhotoUploadViewModel.new,
    );
