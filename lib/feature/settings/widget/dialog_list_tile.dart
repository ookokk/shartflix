import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shartflix/core/const/enums/locale_enum.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/init/app_localization.dart';
import 'package:shartflix/core/theme/theme_controller.dart';

class DialogListTile extends ConsumerWidget {
  const DialogListTile({
    required this.context,
    required this.title,
    this.locale,
    this.svgPath,
    this.iconData,
    this.themeMode,
    super.key,
  });

  final BuildContext context;
  final Locales? locale;
  final String? svgPath;
  final IconData? iconData;
  final ThemeMode? themeMode;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return ListTile(
      // tileColor: const Color(0XFF330505),
      tileColor: theme.currentTheme.cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: svgPath != null
          ? SvgPicture.asset(svgPath!, height: 30)
          : Icon(iconData),
      title: Text(
        title,
        style: context.textTheme.headlineSmall?.copyWith(color: Colors.white),
      ),
      onTap: () async {
        if (svgPath != null) {
          await AppLocalization.updateLanguage(
            this.context,
            value: locale!,
          ).then((value) {
            this.context.router.pop();
          });
        } else {
          await ref.read(themeProvider).setTheme(themeMode!);
        }
      },
    );
  }
}
