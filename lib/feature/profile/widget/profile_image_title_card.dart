import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/profile/widget/screen_size_image.dart';

class ProfileImageTitleCard extends StatelessWidget {
  const ProfileImageTitleCard({
    required this.title,
    required this.imageUrl,
    super.key,
    this.subtitle,
  });

  final String title;
  final String? subtitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: CustomAppSizes.xSmall,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(CustomAppSizes.medium),
            child: ScreenSizeImage(imageUrl: imageUrl),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.headlineSmall?.copyWith(
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
