import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class RegisterTitle extends StatelessWidget {
  const RegisterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        SvgPicture.asset(
          Assets.imageAppIcon,
          height: context.media.size.height * 0.12,
        ),
        Text(
          LocaleKeys.sign_register.tr(),
          style: context.textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        10.verticalSpace,
        Text(
          LocaleKeys.sing_with_your_info.tr(),
          style: context.textTheme.headlineMedium?.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
