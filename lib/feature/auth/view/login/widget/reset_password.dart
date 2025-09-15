import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          LocaleKeys.sign_recovery_password.tr(),
          style: context.textTheme.headlineSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
