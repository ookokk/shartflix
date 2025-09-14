import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class TryAgainError extends StatelessWidget {
  const TryAgainError({this.onTap, super.key});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: onTap,
        child: Text(
          LocaleKeys.an_error_occurred.tr(),
          style: context.textTheme.labelLarge,
        ),
      ),
    );
  }
}
