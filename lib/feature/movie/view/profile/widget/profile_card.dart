import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/movie/view/profile/widget/custom_avatar.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/model/user/user_model.dart';
import 'package:shartflix/product/widget/responsive/custom_button.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({required this.userModel, super.key, this.onTap});

  final UserModel userModel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: AppPaddings.smallVertical,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAvatar(imageUrl: userModel.photoUrl, onPressed: onTap),
            10.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    userModel.name ?? '',
                    style: context.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: context.colorScheme.errorContainer,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'ID: ${userModel.id!.substring(0, 6)}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.headlineSmall?.copyWith(
                      color: context.colorScheme.shadow,
                    ),
                  ),
                ],
              ),
            ),
            5.horizontalSpace,
            CustomButton(
              bgColor: context.colorScheme.tertiary,
              borderRadius: BorderRadius.circular(4),
              onPressed: () => context.router.push(
                PhotoUploadRoute(isNewRegistered: false),
              ),
              text: Text(
                LocaleKeys.generic_add_photo.tr(),
                style: context.textTheme.headlineSmall?.copyWith(
                  color: context.colorScheme.errorContainer,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
