import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/enums/alert_dialog_colors.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/auth/domain/auth_use_case.dart';
import 'package:shartflix/feature/auth/view/register/widget/term_of_privacy_button.dart';
import 'package:shartflix/feature/movie/app/view_model/explore_view_model.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/dialog/warning_alert.dart';

class AuthViewModel {
  AuthViewModel(this.authUseCase);
  final AuthUseCase authUseCase;

  Future<void> login(
    BuildContext context,
    WidgetRef ref,
    GlobalKey<FormState> formKey,
    String email,
    String password,
  ) async {
    if (!formKey.currentState!.validate()) return;
    try {
      await authUseCase.login(email, password);
      await context.router.pushAndPopUntil(
        const MainRoute(),
        predicate: (_) => false,
      );
    } catch (e) {
      _showError(context, e.toString());
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
      _showError(context, LocaleKeys.please_privacy.tr());
      return;
    }
    try {
      await authUseCase.register(email, password, name);
      await context.router.pushAndPopUntil(
        PhotoUploadRoute(isNewRegistered: true),
        predicate: (_) => false,
      );
    } catch (e) {
      _showError(context, e.toString());
    }
  }

  void _showError(BuildContext context, String msg) {
    WarningAlert().show(context, msg, true, AlertDialogColors.error);
  }

  Future<void> signOut(BuildContext context, WidgetRef ref) async {
    await CacheManager.instance.clearToken();
    ref.read(exploreProvider.notifier).cleanState();
    await context.router.pushAndPopUntil(
      const LoginRoute(),
      predicate: (_) => false,
    );
  }
}
