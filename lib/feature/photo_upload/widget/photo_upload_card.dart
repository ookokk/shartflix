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
        options: const RoundedRectDottedBorderOptions(
          dashPattern: [5, 5],
          radius: Radius.circular(24),
          color: Colors.white70,
          padding: EdgeInsets.all(16),
        ),
        child: SizedBox(
          width: context.media.size.width / 1.8,
          height: context.media.size.width / 1.8,
          child: image != null
              ? Image.file(image!, fit: BoxFit.cover)
              : Center(child: Image.asset(Assets.imagePlusIcon)),
        ),
      ),
    );
  }
}
