import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/product/widget/nav_bar/nav_bar_model.dart';

class NavBarButton extends StatelessWidget {
  const NavBarButton({
    required this.isActive,
    required this.onPressed,
    required this.index,
    required this.model,
    super.key,
  });
  final bool isActive;
  final int index;
  final NavBarModel model;

  final void Function(int index) onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        onPressed(index);
      },
      style: FilledButton.styleFrom(
        side: BorderSide(color: isActive ? Colors.red : Colors.grey),
        padding: const EdgeInsets.symmetric(horizontal: 34),
        backgroundColor: isActive ? Colors.red : Colors.black87,
      ),
      child: Row(
        spacing: CustomAppSizes.small,
        children: [
          Image.asset(
            isActive ? model.activeIcon : model.inactiveIcon,
            height: 55,
            color: Colors.white,
          ),
          Text(
            model.title,
            style: context.textTheme.headlineMedium?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
