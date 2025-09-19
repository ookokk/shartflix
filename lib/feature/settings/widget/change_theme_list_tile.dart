import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/env/app_env.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/theme/theme_controller.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class ChangeThemeListTile extends ConsumerWidget {
  const ChangeThemeListTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colorScheme;
    final theme = ref.watch(themeProvider);
    final isDark = theme.brightness == Brightness.dark;
    return ListTile(
      leading: Icon(
        Icons.dark_mode_outlined,
        color: colors.errorContainer,
      ),
      title: Text(
        LocaleKeys.dark_theme.tr(),
        style: context.textTheme.headlineSmall?.copyWith(
          color: colors.errorContainer,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: CupertinoSwitch(
        activeColor: Colors.redAccent,
        value: isDark,
        onChanged: (value) async {
          ref
              .read(themeProvider.notifier)
              .toggleTheme(value ? AppEnv.darkTheme : AppEnv.lightTheme);
        },
      ),
    );
  }
}
