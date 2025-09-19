import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/enums/locale_enum.dart';
import 'package:shartflix/feature/movie/view/settings/widget/dialog_list_tile.dart';
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
                DialogListTile(
                  context: context,
                  locale: Locales.en,
                  svgPath: Assets.imageUs,
                  title: LocaleKeys.english_lang.tr(),
                ),
                DialogListTile(
                  context: context,
                  locale: Locales.de,
                  svgPath: Assets.imageGermany,
                  title: LocaleKeys.german_lang.tr(),
                ),
                DialogListTile(
                  context: context,
                  locale: Locales.tr,
                  svgPath: Assets.imageTurkey,
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
