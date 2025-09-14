import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.verticalSpace,
        SvgPicture.asset(
          Assets.imageAppIcon,
          height: context.media.size.height * 0.14,
        ),
        10.verticalSpace,
        Text(
          LocaleKeys.sign_login.tr(),
          style: context.textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        10.verticalSpace,
        Text(
          LocaleKeys.sing_with_your_info.tr(),
          textAlign: TextAlign.center,
          style: context.textTheme.labelLarge?.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
