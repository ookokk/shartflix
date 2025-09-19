import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({required this.imageUrl, this.onPressed, super.key});
  final VoidCallback? onPressed;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      icon: ClipOval(
        child: (imageUrl == null || imageUrl!.isEmpty)
            ? const _ErrorAvatar()
            : CachedNetworkImage(
                width: 64,
                height: 64,
                fit: BoxFit.cover,
                imageUrl: imageUrl!,
                placeholder: (context, url) =>
                    const CircularProgressIndicator.adaptive(),
                errorWidget: (context, url, error) => const _ErrorAvatar(),
              ),
      ),
    );
  }
}

class _ErrorAvatar extends StatelessWidget {
  const _ErrorAvatar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      color: Colors.grey,
      child: const Icon(Icons.person, color: Colors.white),
    );
  }
}
