import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/enums/alert_dialog_colors.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/auth/controller/auth_view_model.dart';
import 'package:shartflix/feature/auth/view/login/widget/go_to_register_button.dart';
import 'package:shartflix/feature/auth/view/login/widget/social_sign_in_button.dart';
import 'package:shartflix/feature/auth/view/register/widget/register_button.dart';
import 'package:shartflix/feature/auth/view/register/widget/register_form.dart';
import 'package:shartflix/feature/auth/view/register/widget/register_title.dart';
import 'package:shartflix/feature/auth/view/register/widget/term_of_privacy_button.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/dialog/warning_alert.dart';
import 'package:shartflix/product/widget/responsive/circle_gradient_background.dart';

part 'register_view_mixin.dart';

@RoutePage()
class RegisterView extends ConsumerStatefulWidget {
  const RegisterView({super.key});

  @override
  ConsumerState<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView>
    with _RegisterViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CircleGradientBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppPaddings.mediumHorizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: CustomAppSizes.medium,
              children: [
                10.verticalSpace,
                const RegisterTitle(),
                RegisterForm(
                  formKey: _formKey,
                  nameController: _nameController,
                  emailController: _emailController,
                  passwordController: _passwordController,
                ),
                5.verticalSpace,
                const TermOfPrivacyButton(),
                5.verticalSpace,
                RegisterButton(onPressed: _register),
                5.verticalSpace,
                const SocialSignInButton(),
                5.verticalSpace,
                GoToRegisterButton(
                  text1: ' ${LocaleKeys.sign_no_account.tr()}',
                  text2: LocaleKeys.sign_login.tr(),
                  onPressed: _goLogin,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
