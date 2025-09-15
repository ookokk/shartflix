import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shartflix/core/const/env/app_env.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class LoginMoviesLottie extends StatelessWidget {
  const LoginMoviesLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.media.size.height * 0.25,
      child: Lottie.network(
        AppEnv.loginLottie,
        fit: BoxFit.contain,
        repeat: true,
      ),
    );
  }
}
