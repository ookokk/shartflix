import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/responsive/circle_gradient_background.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1));
      final token = await CacheManager.instance.getToken();

      if (mounted) {
        if (token != null) {
          await context.router.replace(const MainRoute());
        } else {
          await context.router.replace(const LoginRoute());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircleGradientBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.imageAppIcon,
                height: context.media.size.height * 0.15,
              ),
              Text(
                LocaleKeys.app_name.tr(),
                style: context.textTheme.headlineLarge?.copyWith(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
