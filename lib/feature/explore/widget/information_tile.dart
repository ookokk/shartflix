import 'package:easy_localization/easy_localization.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/generated/assets.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class InformationTile extends StatelessWidget {
  const InformationTile({
    required this.title,
    required this.description,
    this.maxLines = 2,
    super.key,
  });

  final String? title;
  final String? description;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    if (title == null && description == null) {
      return const SizedBox(width: double.infinity);
    }
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: AppPaddings.xSmall,
            child: SvgPicture.asset(Assets.imageAppIcon),
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: context.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              10.verticalSpace,
              ExpandableText(
                description!,
                expandText: LocaleKeys.tile_show_more.tr(),
                collapseText: LocaleKeys.tile_show_less.tr(),
                maxLines: maxLines,
                linkStyle: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                style: context.textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                ),
                animation: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
