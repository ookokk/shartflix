import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/init/network_manager.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/auth/app/view_model/auth_view_model.dart';
import 'package:shartflix/feature/auth/data/auth_service_impl.dart';
import 'package:shartflix/feature/auth/domain/auth_use_case.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_widgets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/responsive/circle_gradient_background.dart';

@RoutePage()
class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final emailCnt = TextEditingController();
    final passwordCnt = TextEditingController();
    final authUseCase = AuthUseCase(
      AuthServiceImpl(NetworkManager.instance, CacheManager.instance),
    );
    final authViewModel = AuthViewModel(authUseCase);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CircleGradientBackground(
        child: SingleChildScrollView(
          child: KeyboardDismissOnTap(
            dismissOnCapturedTaps: true,
            child: Padding(
              padding: AppPaddings.mediumHorizontal,
              child: Column(
                children: [
                  const LoginMoviesLottie(),
                  const LoginTitle(),
                  30.verticalSpace,
                  LoginForm(
                    formKey: formKey,
                    emailController: emailCnt,
                    passwordController: passwordCnt,
                  ),
                  const ResetPassword(),
                  LoginRegisterButton(
                    onPressed: () => authViewModel.login(
                      context,
                      ref,
                      formKey,
                      emailCnt.text,
                      passwordCnt.text,
                    ),
                    text: LocaleKeys.sign_login.tr(),
                  ),
                  20.verticalSpace,
                  const SocialSignButtons(),
                  10.verticalSpace,
                  GoToRegisterButton(
                    text1: ' ${LocaleKeys.sign_exist_account.tr()}  ',
                    text2: LocaleKeys.sign_login_message.tr(),
                    onPressed: () =>
                        context.router.push(const RegisterRoute()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
