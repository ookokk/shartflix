import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';

class PhotoUploadButton extends StatelessWidget {
  const PhotoUploadButton({
    required this.onTap,
    required this.text,
    super.key,
    this.bgColor = Colors.blue,
    this.borderSide = BorderSide.none,
  });

  final VoidCallback onTap;
  final Widget text;
  final Color bgColor;
  final BorderSide borderSide;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity - 50, 60),
        maximumSize: const Size(double.infinity - 50, 60),
        backgroundColor: bgColor,
        padding: AppPaddings.medium,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          side: borderSide,
        ),
      ),
      child: text,
    );
  }
}
