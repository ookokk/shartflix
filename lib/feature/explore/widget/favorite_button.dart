import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/generated/assets.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    this.onPressed,
    this.isFavorite = false,
    super.key,
  });

  final bool isFavorite;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: onPressed,
      icon: Image.asset(
        isFavorite ? Assets.imageHeartFill : Assets.imageHeart,
        color: Colors.white,
        height: 25,
      ),
      style: IconButton.styleFrom(
        side: const BorderSide(color: Colors.grey),
        padding: const EdgeInsets.symmetric(
          vertical: CustomAppSizes.large,
          horizontal: CustomAppSizes.medium,
        ),
      ),
    );
  }
}
