import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';

class PhotoUploadAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PhotoUploadAppBar({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    final theme = context.colorScheme;
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Text(
        text,
        style: context.textTheme.headlineLarge?.copyWith(
          color: theme.errorContainer,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: FilledButton(
        onPressed: () => context.router.pop(),
        style: FilledButton.styleFrom(
          backgroundColor: theme.surface,
          padding: AppPaddings.mediumVertical,
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.medium,
            side: BorderSide(color: Colors.white, width: 0.7),
          ),
        ),
        child: Icon(
          Icons.arrow_back_outlined,
          color: theme.errorContainer,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
