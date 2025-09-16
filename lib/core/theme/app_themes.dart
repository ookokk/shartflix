import 'package:flutter/material.dart';
import 'package:shartflix/core/theme/app_text_style.dart';
import 'package:shartflix/core/theme/custom_color_scheme.dart';

class AppThemes implements CustomTheme {
  @override
  ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorScheme.light(),
    textTheme: TextTheme(
      bodyLarge: AppTextStyle.headline48.copyWith(color: Colors.black),
      bodyMedium: AppTextStyle.headline40.copyWith(color: Colors.black),
      bodySmall: AppTextStyle.headline32.copyWith(color: Colors.black),
      displayMedium: AppTextStyle.headline24.copyWith(color: Colors.black),
      displaySmall: AppTextStyle.headline20.copyWith(color: Colors.black),
      headlineLarge: AppTextStyle.headline18.copyWith(color: Colors.black),
      headlineMedium: AppTextStyle.headline16.copyWith(
        color: Colors.black,
      ),
      headlineSmall: AppTextStyle.headline14.copyWith(color: Colors.black),
      labelLarge: AppTextStyle.headline12.copyWith(color: Colors.black),
      labelMedium: AppTextStyle.headline10.copyWith(color: Colors.black),
    ),
  );

  @override
  ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorScheme.dark(),
    textTheme: TextTheme(
      bodyLarge: AppTextStyle.headline48.copyWith(color: Colors.white),
      bodyMedium: AppTextStyle.headline40.copyWith(color: Colors.white),
      bodySmall: AppTextStyle.headline32.copyWith(color: Colors.white),
      displayLarge: AppTextStyle.headline32.copyWith(color: Colors.white),
      displayMedium: AppTextStyle.headline24.copyWith(color: Colors.white),
      displaySmall: AppTextStyle.headline20.copyWith(color: Colors.white),
      headlineLarge: AppTextStyle.headline18.copyWith(color: Colors.white),
      headlineMedium: AppTextStyle.headline16.copyWith(
        color: Colors.white,
      ),
      headlineSmall: AppTextStyle.headline14.copyWith(color: Colors.white),
      labelLarge: AppTextStyle.headline12.copyWith(color: Colors.white),
      labelMedium: AppTextStyle.headline10.copyWith(color: Colors.white),
    ),
  );
}

abstract interface class CustomTheme {
  ThemeData get lightTheme;
  ThemeData get darkTheme;
}
