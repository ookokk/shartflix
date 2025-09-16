import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/product/widget/nav_bar/app_nav_bar.dart';

@RoutePage()
class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return AutoTabsScaffold(
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(seconds: 1),
      routes: const [ExploreRoute(), ProfileRoute()],

      bottomNavigationBuilder: (context, tabsRouter) {
        return AppNavbar(tabsRouter: tabsRouter);
      },
    );
  }
}
