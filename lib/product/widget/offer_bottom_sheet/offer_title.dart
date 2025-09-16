import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class OfferTitle extends StatelessWidget {
  const OfferTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => context.router.pop(),
              icon: SvgPicture.asset(Assets.imageOfferXIcon, height: 35),
            ),
          ],
        ),
        Text(
          LocaleKeys.bottom_sheet_offer_title.tr(),
          style: context.textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.errorContainer,
          ),
        ),
        1.verticalSpace,
        Text(
          LocaleKeys.bottom_sheet_offer_message.tr(),
          style: context.textTheme.headlineSmall?.copyWith(
            color: context.colorScheme.errorContainer,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
