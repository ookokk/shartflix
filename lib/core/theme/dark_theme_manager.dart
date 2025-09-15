import 'package:flutter/material.dart';
import 'package:shartflix/core/theme/app_color_scheme.dart';
import 'package:shartflix/core/theme/app_text_style.dart';
import 'package:shartflix/core/theme/custom_theme.dart';

class DarkThemeManager implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColorScheme.darkColorScheme.surface,
    canvasColor: AppColorScheme.darkColorScheme.surface,
    colorScheme: AppColorScheme.darkColorScheme,
    cardColor: Colors.yellow,
    textTheme: TextTheme(
      bodyLarge: AppTextStyle.headline48.copyWith(color: Colors.white),
      bodyMedium: AppTextStyle.headline40.copyWith(color: Colors.white),
      bodySmall: AppTextStyle.headline32.copyWith(color: Colors.white),
      displayLarge: AppTextStyle.headline32.copyWith(color: Colors.white),
      displayMedium: AppTextStyle.headline24.copyWith(color: Colors.white),
      displaySmall: AppTextStyle.headline20.copyWith(color: Colors.white),
      headlineLarge: AppTextStyle.headline18.copyWith(color: Colors.white),
      headlineMedium: AppTextStyle.headline16.copyWith(color: Colors.white),
      headlineSmall: AppTextStyle.headline14.copyWith(color: Colors.white),
      labelLarge: AppTextStyle.headline12.copyWith(color: Colors.white),
      labelMedium: AppTextStyle.headline10.copyWith(color: Colors.white),
    ),
  );
}
