import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/feature/settings/widget/dialog_list_tile.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class ChangeThemeDialog {
  void show(BuildContext context) {
    showModalBottomSheet<Widget>(
      backgroundColor: const Color(0XFF330505),
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: Color(0XFF330505),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DialogListTile(
                  context: context,
                  title: LocaleKeys.dark_theme.tr(),
                  iconData: Icons.dark_mode_outlined,
                  themeMode: ThemeMode.dark,
                ),
                DialogListTile(
                  context: context,
                  title: LocaleKeys.light_theme.tr(),
                  iconData: Icons.light_mode_outlined,
                  themeMode: ThemeMode.light,
                ),
                DialogListTile(
                  context: context,
                  iconData: Icons.settings_system_daydream,
                  title: LocaleKeys.system_theme.tr(),
                  themeMode: ThemeMode.system,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
