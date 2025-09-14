import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

final class WarningAlert {
  void show(BuildContext context, String title, bool dismissible) {
    showCupertinoDialog<Widget>(
      context: context,
      barrierDismissible: dismissible,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: context.themeData.textTheme.labelMedium,
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              textStyle: context.themeData.textTheme.labelMedium,
              onPressed: () => context.router.pop(),
              child: Text(
                LocaleKeys.okay.tr(),
                style: context.themeData.textTheme.labelMedium,
              ),
            ),
          ],
        );
      },
    );
  }
}
