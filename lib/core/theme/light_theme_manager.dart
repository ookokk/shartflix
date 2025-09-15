import 'package:flutter/material.dart';
import 'package:shartflix/core/theme/app_color_scheme.dart';
import 'package:shartflix/core/theme/app_text_style.dart';
import 'package:shartflix/core/theme/custom_theme.dart';

class LightThemeManager implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    colorScheme: AppColorScheme.lightColorScheme,
    cardColor: Colors.blue,
    scaffoldBackgroundColor: AppColorScheme.lightColorScheme.surface,
    canvasColor: AppColorScheme.lightColorScheme.surface,
    textTheme: TextTheme(
      bodyLarge: AppTextStyle.headline48.copyWith(color: Colors.black),
      bodyMedium: AppTextStyle.headline40.copyWith(color: Colors.black),
      bodySmall: AppTextStyle.headline32.copyWith(color: Colors.black),
      displayMedium: AppTextStyle.headline24.copyWith(color: Colors.black),
      displaySmall: AppTextStyle.headline20.copyWith(color: Colors.black),
      headlineLarge: AppTextStyle.headline18.copyWith(color: Colors.black),
      headlineMedium: AppTextStyle.headline16.copyWith(color: Colors.black),
      headlineSmall: AppTextStyle.headline14.copyWith(color: Colors.black),
      labelLarge: AppTextStyle.headline12.copyWith(color: Colors.black),
      labelMedium: AppTextStyle.headline10.copyWith(color: Colors.black),
    ),
  );
}
