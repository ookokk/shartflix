import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/auth/controller/auth_view_model.dart';
import 'package:shartflix/feature/auth/view/login/widget/go_to_register_button.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_form.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_movies_lottie.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_register_button.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_title.dart';
import 'package:shartflix/feature/auth/view/login/widget/reset_password.dart';
import 'package:shartflix/feature/auth/view/login/widget/social_sign_buttons.dart';
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
                    onPressed: () => AuthViewModel().login(
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
