import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/util/validator/sign_validator.dart';
import 'package:shartflix/feature/auth/widget/custom_text_field.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    required this.emailController,
    required this.passwordController,
    required this.formKey,
    super.key,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: CustomAppSizes.medium,
        children: [
          CustomTextField(
            validator: SignValidator().emailValidator,
            controller: emailController,
            hint: LocaleKeys.sign_email.tr(),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            prefixIcon: Image.asset(Assets.imageMail, color: Colors.white),
          ),
          CustomTextField(
            validator: SignValidator().passwordValidator,
            controller: passwordController,
            hint: LocaleKeys.sign_password.tr(),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                Assets.imageUnlock,
                width: 5,
                color: Colors.white,
              ),
            ),
            isObscure: true,
          ),
        ],
      ),
    );
  }
}
