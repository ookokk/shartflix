import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/util/sign_validator.dart';
import 'package:shartflix/feature/auth/view/widget/custom_text_field.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
    super.key,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    final theme = context.colorScheme;
    return Form(
      key: formKey,
      child: Column(
        spacing: CustomAppSizes.medium,
        children: [
          CustomTextField(
            validator: SignValidator().isEmpty,
            controller: nameController,
            hint: LocaleKeys.sign_name.tr(),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            prefixIcon: Image.asset(
              Assets.imageProfile,
              color: theme.errorContainer,
            ),
          ),
          CustomTextField(
            validator: SignValidator().emailValidator,
            controller: emailController,
            hint: LocaleKeys.sign_email.tr(),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            prefixIcon: Image.asset(
              Assets.imageMail,
              color: theme.errorContainer,
            ),
          ),
          CustomTextField(
            validator: (p0) {
              if (passwordController.text != p0) {
                return LocaleKeys.sign_password_not_match.tr();
              }
              SignValidator().passwordValidator(p0);
              return null;
            },

            textInputAction: TextInputAction.next,
            hint: LocaleKeys.sign_password.tr(),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                Assets.imageUnlock,
                width: 5,
                color: theme.errorContainer,
              ),
            ),
            isObscure: true,
          ),
          CustomTextField(
            validator: SignValidator().passwordValidator,
            controller: passwordController,
            hint: LocaleKeys.sign_re_password.tr(),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                Assets.imageUnlock,
                width: 5,
                color: theme.errorContainer,
              ),
            ),
            isObscure: true,
          ),
        ],
      ),
    );
  }
}
