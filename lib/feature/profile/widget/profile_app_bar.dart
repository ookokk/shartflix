import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/offer_bottom_sheet/offer_bottom_sheet.dart';
import 'package:shartflix/product/widget/responsive/custom_button.dart';

class ProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        LocaleKeys.nav_bar_profile.tr(),
        style: context.textTheme.displaySmall?.copyWith(
          color: context.colorScheme.errorContainer,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: AppPaddings.smallHorizontal,
          child: CustomButton(
            bgColor: const Color(0xFFEC0909),
            text: Text(
              LocaleKeys.bottom_sheet_offer_title.tr(),
              style: context.textTheme.labelLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            icon: Image.asset(Assets.imageGem),
            onPressed: () => OfferBottomSheet.show(context),
            borderRadius: BorderRadius.circular(18),
            contentPadding: AppPaddings.smallHorizontal,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
