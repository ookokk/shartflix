import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/router/router_provider.dart';
import 'package:shartflix/core/theme/dark_theme_manager.dart';
import 'package:shartflix/core/theme/light_theme_manager.dart';
import 'package:shartflix/product/widget/responsive/custom_responsive.dart';
import 'package:shartflix/product/widget/responsive/main_build.dart';

class ShartflixApp extends ConsumerWidget {
  const ShartflixApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Listener(
      onPointerDown: (_) {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: CustomResponsive(
        child: MaterialApp.router(
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          theme: LightThemeManager().themeData,
          darkTheme: DarkThemeManager().themeData,
          supportedLocales: context.supportedLocales,
          routerDelegate: ref.read(routerProvider).delegate(),
          routeInformationParser: ref
              .read(routerProvider)
              .defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          builder: MainBuild.build,
        ),
      ),
    );
  }
}
