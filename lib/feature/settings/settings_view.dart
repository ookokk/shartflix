import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/enums/alert_dialog_colors.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/auth/controller/auth_view_model.dart';
import 'package:shartflix/feature/photo_upload/widget/photo_upload_app_bar.dart';
import 'package:shartflix/feature/settings/widget/change_language_dialog.dart';
import 'package:shartflix/feature/settings/widget/change_theme_dialog.dart';
import 'package:shartflix/feature/settings/widget/settings_divider.dart';
import 'package:shartflix/feature/settings/widget/settings_list_tile.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/dialog/question_alert.dart';
import 'package:shartflix/product/widget/responsive/red_black_gradient_background.dart';

@RoutePage()
class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PhotoUploadAppBar(text: LocaleKeys.settings_appbar.tr()),
      body: RedBlackGradientBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppPaddings.medium,
            child: Column(
              children: [
                100.verticalSpace,
                SettingsListTile(
                  iconData: Icons.language,
                  text: LocaleKeys.changeLanguage.tr(),
                  onTap: () => ChangeLanguageDialog().show(context),
                ),

                const SettingsDivider(),
                SettingsListTile(
                  iconData: Icons.light_mode_sharp,
                  text: LocaleKeys.theme_settings.tr(),
                  onTap: () => ChangeThemeDialog().show(context),
                ),
                const SettingsDivider(),
                SettingsListTile(
                  iconData: Icons.sign_language_outlined,
                  text: LocaleKeys.signOut.tr(),
                  onTap: () =>
                      QuestionAlert().show(
                        context,
                        onTap: () => AuthViewModel().signOut(context, ref),
                        bodyText: LocaleKeys.areYouSureSignOut.tr(),
                        buttonText: LocaleKeys.signOut.tr(),
                        textColor: Colors.black87,
                        bgColor: AlertDialogColors.warning,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
