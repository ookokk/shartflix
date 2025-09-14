import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class PhotoUploadAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PhotoUploadAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Text(
        LocaleKeys.profile_title.tr(),
        style: context.textTheme.headlineLarge?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: Padding(
        padding: AppPaddings.xSmall,
        child: FilledButton(
          onPressed: () => context.router.pop(),
          style: FilledButton.styleFrom(
            backgroundColor: const Color(0xff440303),
            padding: AppPaddings.mediumVertical,
            shape: const RoundedRectangleBorder(
              borderRadius: AppRadius.medium,
              side: BorderSide(color: Colors.grey, width: 0.7),
            ),
          ),
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
