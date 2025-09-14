import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class PhotoUploadTitle extends StatelessWidget {
  const PhotoUploadTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.media.size.width / 2.5,
      child: Column(
        children: [
          20.verticalSpace,
          SvgPicture.asset(Assets.imageProfilePicContainer),
          10.verticalSpace,
          Text(
            LocaleKeys.sign_upload_image_title.tr(),
            style: context.textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          10.verticalSpace,
          Text(
            LocaleKeys.profile_photo_image_add.tr(),
            style: context.textTheme.headlineSmall?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
