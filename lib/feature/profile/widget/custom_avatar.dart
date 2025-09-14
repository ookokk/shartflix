import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({required this.imageUrl, this.onPressed, super.key});
  final VoidCallback? onPressed;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      icon: ClipOval(
        child: CachedNetworkImage(
          width: 64,
          height: 64,
          fit: BoxFit.cover,
          imageUrl: imageUrl,
          placeholder: (context, url) =>
              const CircularProgressIndicator.adaptive(),
          errorWidget: (context, url, error) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: context.colorScheme.errorContainer,
              ),
              child: const Icon(Icons.person),
            );
          },
        ),
      ),
    );
  }
}
