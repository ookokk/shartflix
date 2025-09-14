import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/nav_bar/nav_bar_button.dart';
import 'package:shartflix/product/widget/nav_bar/nav_bar_model.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({required this.tabsRouter, super.key});
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: _NavBarWidget(
        items: [
          NavBarModel(
            title: LocaleKeys.nav_bar_home.tr(),
            activeIcon: Assets.imageHomeFill,
            inactiveIcon: Assets.imageHome,
          ),
          NavBarModel(
            title: LocaleKeys.nav_bar_profile.tr(),
            activeIcon: Assets.imageProfileFill,
            inactiveIcon: Assets.imageProfile,
          ),
        ],
        currentIndex: tabsRouter.activeIndex,
        onChange: tabsRouter.setActiveIndex,
      ),
    );
  }
}

class _NavBarWidget extends StatelessWidget {
  const _NavBarWidget({
    required this.currentIndex,
    required this.onChange,
    required this.items,
  });

  final List<NavBarModel> items;
  final int currentIndex;
  final void Function(int index) onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: CustomAppSizes.large,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: items.asMap().entries.map((e) {
        return NavBarButton(
          isActive: e.key == currentIndex,
          onPressed: onChange,
          index: e.key,
          model: e.value,
        );
      }).toList(),
    );
  }
}
