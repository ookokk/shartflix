import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class GoToRegisterButton extends StatelessWidget {
  const GoToRegisterButton({
    required this.text1,
    required this.text2,
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    final theme = context.colorScheme;
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          text: text1,
          style: context.textTheme.headlineSmall?.copyWith(
            color: theme.errorContainer,
            fontWeight: FontWeight.normal,
          ),
          children: [
            TextSpan(
              text: '  $text2',
              style: context.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.errorContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
