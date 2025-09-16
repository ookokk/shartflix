import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class ScreenSizeImage extends ConsumerWidget {
  const ScreenSizeImage({
    this.imageUrl,
    this.errorText = 'Image could not be loaded',
    super.key,
  });

  final String? imageUrl;
  final String errorText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return Center(
        child: Text(
          LocaleKeys.an_error_occurred,
          style: context.textTheme.titleMedium,
        ),
      );
    }
    return CachedNetworkImage(
      height: 50,
      imageUrl: imageUrl!.replaceFirst('http://', 'https://'),
      fit: BoxFit.cover,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator.adaptive()),
      errorWidget: (context, url, error) {
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
              Text('Image could not loaded', textAlign: TextAlign.center),
            ],
          ),
        );
      },
    );
  }
}
