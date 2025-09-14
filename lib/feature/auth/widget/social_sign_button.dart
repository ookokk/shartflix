import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({required this.asset, this.onPressed, super.key});

  final VoidCallback? onPressed;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: context.colorScheme.onSecondary,
        padding: AppPaddings.medium,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey, width: 0.7),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: SvgPicture.asset(
        asset,
        height: CustomAppSizes.xlarge,
        width: CustomAppSizes.xlarge,
        color: Colors.white,
      ),
    );
  }
}
