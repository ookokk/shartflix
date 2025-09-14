import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/explore/widget/favorite_button.dart';
import 'package:shimmer/shimmer.dart';

class ShiningLoading extends StatelessWidget {
  const ShiningLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.white70,
      child: Column(
        spacing: CustomAppSizes.large,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FavoriteButton(isFavorite: true, onPressed: () {}),
          _buildInfoCard(),
        ],
      ),
    );
  }

  Widget _buildInfoCard() {
    return Column(
      spacing: CustomAppSizes.xSmall,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: CustomAppSizes.medium,
          width: CustomAppSizes.xlarge * 4,
          decoration: const BoxDecoration(
            borderRadius: AppRadius.large,
            color: Colors.black,
          ),
        ),
        Container(
          height: CustomAppSizes.medium,
          decoration: const BoxDecoration(
            borderRadius: AppRadius.large,
            color: Colors.black,
          ),
        ),
        Container(
          height: CustomAppSizes.medium,
          decoration: const BoxDecoration(
            borderRadius: AppRadius.large,
            color: Colors.black,
          ),
        ),
        Container(
          height: 16,
          width: CustomAppSizes.xlarge * 8,
          decoration: const BoxDecoration(
            borderRadius: AppRadius.large,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
