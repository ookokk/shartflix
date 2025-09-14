import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.icon,
    this.contentPadding,
    this.borderSide = BorderSide.none,
    this.borderRadius,
    this.bgColor,
  });
  final Text text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Widget? icon;
  final Color? bgColor;
  final BorderRadius? borderRadius;
  final BorderSide borderSide;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      icon: isLoading ? null : icon,
      style: FilledButton.styleFrom(
        backgroundColor: bgColor,
        padding: contentPadding,
        shape: RoundedRectangleBorder(
          side: borderSide,
          borderRadius: borderRadius ?? AppRadius.medium,
        ),
      ),
      onPressed: isLoading ? null : onPressed,
      label: isLoading ? const CircularProgressIndicator.adaptive() : text,
    );
  }
}
