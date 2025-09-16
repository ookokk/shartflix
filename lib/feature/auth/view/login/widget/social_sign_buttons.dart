import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/auth/widget/seperator_list_widget.dart';
import 'package:shartflix/generated/assets.dart';

class SocialSignButtons extends StatelessWidget {
  const SocialSignButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const SeparatorListWidget(
      axis: Axis.horizontal,
      separator: SizedBox(width: CustomAppSizes.medium),
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SocialButton(asset: Assets.imageSocialGoogle),
        _SocialButton(asset: Assets.imageSocialApple),
        _SocialButton(asset: Assets.imageSocialFacebook),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({required this.asset});
  final String asset;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
        backgroundColor: const Color(0xfffffff),
        padding: AppPaddings.medium,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey, width: 0.9),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: SvgPicture.asset(
        asset,
        height: CustomAppSizes.xlarge,
        width: CustomAppSizes.xlarge,
        color: context.colorScheme.errorContainer,
      ),
    );
  }
}
