import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/enums/alert_dialog_colors.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/auth/view/register/widget/term_of_privacy_button.dart';
import 'package:shartflix/feature/explore/controller/explore_view_model.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/service/auth_service.dart';
import 'package:shartflix/product/widget/dialog/warning_alert.dart';

class AuthViewModel {
  Future<void> login(
    BuildContext context,
    WidgetRef ref,
    GlobalKey<FormState> formKey,
    String email,
    String password,
  ) async {
    if (formKey.currentState!.validate()) {
      final res = await AuthService.instance.login(
        email: email,
        password: password,
      );
      if (res != null && res.response?.code == 200) {
        await context.router.pushAndPopUntil(
          const MainRoute(),
          predicate: (_) => false,
        );
      } else {
        final errorMsg =
            res?.response?.message ?? LocaleKeys.an_error_occurred.tr();
        _showError(context, errorMsg);
      }
    }
  }

  Future<void> register(
    BuildContext context,
    WidgetRef ref,
    GlobalKey<FormState> formKey,
    String email,
    String password,
    String name,
  ) async {
    if (!formKey.currentState!.validate()) return;

    if (!ref.read(isTermApprovedProvider)) {
      _showError(context, LocaleKeys.please_privacy);
      return;
    }
    final res = await AuthService.instance.register(
      name: name,
      email: email,
      password: password,
    );
    if (res != null &&
        (res.response?.code == 201 || res.response?.code == 200)) {
      await context.router.pushAndPopUntil(
        PhotoUploadRoute(isNewRegistered: true),
        predicate: (_) => false,
      );
      return;
    }
    final errorMsg =
        res?.response?.message ?? LocaleKeys.an_error_occurred.tr();
    _showError(context, errorMsg);
  }

  void _showError(BuildContext context, String msg) {
    WarningAlert().show(context, msg, true, AlertDialogColors.error);
  }

  Future<void> signOut(BuildContext context, WidgetRef ref) async {
    ref.read(exploreProvider.notifier).cleanState();
    await CacheManager.instance.clearToken();
    await context.router.pushAndPopUntil(
      const LoginRoute(),
      predicate: (_) => false,
    );
  }
}
