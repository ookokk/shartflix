import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/enums/alert_dialog_colors.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/auth/view/login/widget/go_to_register_button.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_form.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_movies_lottie.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_register_button.dart';
import 'package:shartflix/feature/auth/view/login/widget/login_title.dart';
import 'package:shartflix/feature/auth/view/login/widget/reset_password.dart';
import 'package:shartflix/feature/auth/view/login/widget/social_sign_buttons.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/service/auth_service.dart';
import 'package:shartflix/product/widget/dialog/warning_alert.dart';
import 'package:shartflix/product/widget/responsive/circle_gradient_background.dart';

part 'login_view_mixin.dart';

@RoutePage()
class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => LoginViewState();
}

class LoginViewState extends ConsumerState<LoginView> with _LoginViewMixin {
  @override
  Widget build(BuildContext context) {
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
                    formKey: _formKey,
                    emailController: _emailController,
                    passwordController: _passwordController,
                  ),
                  const ResetPassword(),
                  LoginRegisterButton(
                    onPressed: _login,
                    text: LocaleKeys.sign_login.tr(),
                  ),
                  20.verticalSpace,
                  const SocialSignButtons(),
                  10.verticalSpace,
                  GoToRegisterButton(
                    text1: ' ${LocaleKeys.sign_exist_account.tr()}  ',
                    text2: LocaleKeys.sign_login_message.tr(),
                    onPressed: _goRegister,
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
