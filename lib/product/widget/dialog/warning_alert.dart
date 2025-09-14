import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

final class WarningAlert {
  void show(
    BuildContext context,
    String title,
    bool dismissible,
    Color bgColor,
  ) {
    showDialog<Widget>(
      context: context,
      barrierDismissible: dismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: bgColor,
          title: Text(
            title,
            style: context.themeData.textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => context.router.pop(),
              child: Text(
                LocaleKeys.okay.tr(),
                style: context.themeData.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
