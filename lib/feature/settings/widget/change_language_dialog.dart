import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shartflix/core/const/enums/locale_enum.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/init/app_localization.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class ChangeLanguageDialog {
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
                LanguageTile(
                  context: context,
                  locale: Locales.en,
                  iconPath: Assets.imageUs,
                  title: LocaleKeys.english_lang.tr(),
                ),
                LanguageTile(
                  context: context,
                  locale: Locales.de,
                  iconPath: Assets.imageGermany,
                  title: LocaleKeys.german_lang.tr(),
                ),
                LanguageTile(
                  context: context,
                  locale: Locales.tr,
                  iconPath: Assets.imageTurkey,
                  title: LocaleKeys.turkish_lang.tr(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

final class LanguageTile extends StatelessWidget {
  const LanguageTile({
    required this.context,
    required this.locale,
    required this.iconPath,
    required this.title,
    super.key,
  });
  final BuildContext context;
  final Locales locale;
  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color(0XFF330505),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: SvgPicture.asset(iconPath, height: 30),
      title: Text(
        title,
        style: context.textTheme.headlineSmall?.copyWith(
          color: Colors.white,
        ),
      ),
      onTap: () async {
        await AppLocalization.updateLanguage(
          this.context,
          value: locale,
        ).then((value) {
          this.context.router.pop();
        });
      },
    );
  }
}
