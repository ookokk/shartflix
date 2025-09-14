import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class CoinsCard extends StatelessWidget {
  const CoinsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: CustomAppSizes.large,
      children: [
        Text(
          LocaleKeys.bottom_sheet_jeton_message.tr(),
          style: context.textTheme.headlineMedium?.copyWith(
            color: Colors.white,
          ),
        ),
        Row(
          spacing: CustomAppSizes.medium,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.imageCoin1),
            SvgPicture.asset(Assets.imageCoin2),
            SvgPicture.asset(Assets.imageCoin3),
          ],
        ),
      ],
    );
  }
}
