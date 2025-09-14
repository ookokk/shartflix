import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class BonusItem extends StatelessWidget {
  const BonusItem({required this.iconPath, required this.text, super.key});

  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(iconPath, height: 80, fit: BoxFit.contain),
          5.verticalSpace,
          Text(
            text,
            textAlign: TextAlign.center,
            style: context.textTheme.labelLarge?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
