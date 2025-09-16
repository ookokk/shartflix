import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/offer_bottom_sheet/bonus_item.dart';

class BonusCard extends StatelessWidget {
  const BonusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        padding: const EdgeInsets.all(CustomAppSizes.medium),
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colorScheme.shadow,
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(CustomAppSizes.medium),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LocaleKeys.bottom_sheet_bonus_title.tr(),
              style: context.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.errorContainer,
              ),
            ),
            const SizedBox(height: CustomAppSizes.large),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BonusItem(
                  iconPath: Assets.imageBonus1,
                  text: LocaleKeys.bottom_sheet_bonus_gem.tr(),
                ),
                BonusItem(
                  iconPath: Assets.imageBonus2,
                  text: LocaleKeys.bottom_sheet_bonus_hearts.tr(),
                ),
                BonusItem(
                  iconPath: Assets.imageBonus3,
                  text: LocaleKeys.bottom_sheet_bonus_up_arrow.tr(),
                ),
                BonusItem(
                  iconPath: Assets.imageBonus4,
                  text: LocaleKeys.bottom_sheet_bonus_heart.tr(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
