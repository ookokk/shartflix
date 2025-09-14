import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/auth/widget/seperator_list_widget.dart';
import 'package:shartflix/feature/auth/widget/social_sign_button.dart';
import 'package:shartflix/generated/assets.dart';

class SocialSignInButton extends StatelessWidget {
  const SocialSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SeparatorListWidget(
      axis: Axis.horizontal,
      separator: SizedBox(width: CustomAppSizes.small),
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(asset: Assets.imageSocialGoogle),
        SocialButton(asset: Assets.imageSocialApple),
        SocialButton(asset: Assets.imageSocialFacebook),
      ],
    );
  }
}
