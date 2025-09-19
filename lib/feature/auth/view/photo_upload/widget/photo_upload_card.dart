import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/assets.dart';

class PhotoUploadCard extends ConsumerWidget {
  const PhotoUploadCard({required this.onTap, this.image, super.key});

  final VoidCallback onTap;
  final File? image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          dashPattern: [5, 5],
          radius: const Radius.circular(24),
          color: context.colorScheme.shadow,
          padding: const EdgeInsets.all(16),
        ),
        child: SizedBox(
          width: context.media.size.width / 2.4,
          height: context.media.size.width / 2.4,
          child: image != null
              ? Image.file(image!, fit: BoxFit.cover)
              : Center(
                  child: Image.asset(
                    Assets.imagePlusIcon,
                    color: context.colorScheme.errorContainer,
                  ),
                ),
        ),
      ),
    );
  }
}
