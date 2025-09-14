import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';

class ScreenSizeImage extends StatelessWidget {
  const ScreenSizeImage({
    this.imageUrl,
    this.errorText = 'Image could not be loaded',
    super.key,
  });

  final String? imageUrl;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    final logger = Logger();
    if (imageUrl == null || imageUrl!.isEmpty) {
      logger.e('Image URL is null or empty');
    }
    return CachedNetworkImage(
      imageUrl: imageUrl?.replaceFirst('http://', 'https://') ?? '',

      fit: BoxFit.cover,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator.adaptive()),
      errorWidget: (context, url, error) {
        logger.e('Bad url: $url', error: error);
        return DecoratedBox(
          decoration: BoxDecoration(
            color: context.colorScheme.errorContainer,
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error),
              SizedBox(height: CustomAppSizes.medium),
              Text(
                'Image could not be loaded',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
