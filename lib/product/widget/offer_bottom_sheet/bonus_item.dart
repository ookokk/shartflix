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
          Image.asset(iconPath, fit: BoxFit.cover, height: 70),
          5.verticalSpace,
          SizedBox(
            width: 100.w,
            child: Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
