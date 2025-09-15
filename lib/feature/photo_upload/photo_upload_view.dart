import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/photo_upload/controller/photo_upload_view_model.dart';
import 'package:shartflix/feature/photo_upload/widget/photo_upload_app_bar.dart';
import 'package:shartflix/feature/photo_upload/widget/photo_upload_button.dart';
import 'package:shartflix/feature/photo_upload/widget/photo_upload_card.dart';
import 'package:shartflix/feature/photo_upload/widget/photo_upload_title.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/responsive/circle_gradient_background.dart';

@RoutePage()
class PhotoUploadView extends ConsumerWidget {
  const PhotoUploadView({required this.isNewRegistered, super.key});
  final bool isNewRegistered;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(photoUploadProvider);
    final viewModel = ref.read(photoUploadProvider.notifier);
    return Scaffold(
      appBar: PhotoUploadAppBar(text: LocaleKeys.profile_title.tr()),
      extendBodyBehindAppBar: true,
      body: CircleGradientBackground(
        child: SafeArea(
          child: Padding(
            padding: AppPaddings.mediumHorizontal,
            child: Column(
              children: [
                const PhotoUploadTitle(),
                50.verticalSpace,
                Expanded(
                  child: PhotoUploadCard(
                    image: state.image,
                    onTap: viewModel.pickImage,
                  ),
                ),
                10.verticalSpace,
                if (state.image != null)
                  IconButton(
                    onPressed: viewModel.removeImage,
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                const Spacer(),
                Opacity(
                  opacity: state.isImagePicked ? 1.0 : 0.3,
                  child: PhotoUploadButton(
                    onTap: () {
                      if (state.isImagePicked) {
                        viewModel.uploadPhoto(context, ref);
                      }
                    },
                    bgColor: Colors.red,
                    text: state.isLoading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text(
                            LocaleKeys.generic_continue.tr(),
                            style: context.textTheme.headlineMedium
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                  ),
                ),
                10.verticalSpace,
                if (isNewRegistered)
                  PhotoUploadButton(
                    onTap: () => context.router.pushAndPopUntil(
                      const MainRoute(),
                      predicate: (_) => false,
                    ),
                    bgColor: const Color(0xFF000000),
                    text: Text(
                      LocaleKeys.jump.tr(),
                      style: context.textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
