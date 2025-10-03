import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
import 'package:shartflix/feature/auth/view/register/widget/register_widgets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/responsive/circle_gradient_background.dart';

@RoutePage()
class RegisterView extends ConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final emailCnt = TextEditingController();
    final nameCnt = TextEditingController();
    final passwordCnt = TextEditingController();
    final authUseCase = AuthUseCase(
      AuthServiceImpl(NetworkManager.instance, CacheManager.instance),
    );
    final authViewModel = AuthViewModel(authUseCase);

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
                  formKey: formKey,
                  nameController: nameCnt,
                  emailController: emailCnt,
                  passwordController: passwordCnt,
                ),
                5.verticalSpace,
                const TermOfPrivacyButton(),
                5.verticalSpace,
                LoginRegisterButton(
                  text: LocaleKeys.sign_register.tr(),
                  onPressed: () => authViewModel.register(
                    context,
                    ref,
                    formKey,
                    emailCnt.text,
                    passwordCnt.text,
                    nameCnt.text,
                  ),
                ),
                5.verticalSpace,
                const SocialSignButtons(),
                5.verticalSpace,
                GoToRegisterButton(
                  text1: ' ${LocaleKeys.sign_no_account.tr()}',
                  text2: LocaleKeys.sign_login.tr(),
                  onPressed: () => context.router.push(const LoginRoute()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
