import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class GoToRegisterButton extends StatelessWidget {
  const GoToRegisterButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          text: '${LocaleKeys.sign_no_account.tr()} ',
          style: context.textTheme.bodyMedium,
          children: [
            TextSpan(
              text: LocaleKeys.sign_register_message.tr(),
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
