import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';

class SettingsDivider extends StatelessWidget {
  const SettingsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.mediumHorizontal,
      child: Column(
        children: [
          20.verticalSpace,
          const Divider(height: 0.7, thickness: 0.6, color: Colors.white),
          20.verticalSpace,
        ],
      ),
    );
  }
}
