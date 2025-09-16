import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/product/widget/responsive/custom_button.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({
    required this.text,
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        contentPadding: AppPaddings.medium,
        bgColor: const Color(0xFFEC0909),
        text: Text(
          text,
          style: context.textTheme.headlineMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
