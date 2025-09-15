import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
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
    final width = context.media.size.width / 2.2;
    return SizedBox(
      width: width,
      height: 55,
      child: FilledButton(
        onPressed: () => onPressed(index),
        style: FilledButton.styleFrom(
          backgroundColor: isActive ? Colors.red : Colors.black87,
          side: BorderSide(color: isActive ? Colors.red : Colors.grey),
          padding: const EdgeInsets.symmetric(horizontal: 12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              isActive ? model.activeIcon : model.inactiveIcon,
              height: 40,
              color: Colors.white,
            ),
            Flexible(
              child: Text(
                model.title,
                style: context.textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
