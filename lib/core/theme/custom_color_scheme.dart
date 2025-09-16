import 'package:flutter/material.dart';

class CustomColorScheme {
  const CustomColorScheme();

  static ColorScheme light() {
    return const ColorScheme(
      brightness: Brightness.light,
      errorContainer: Colors.black,
      onTertiary: Colors.white,
      primary: Color(0xffEC837A),
      onPrimary: Colors.red,
      secondary: Color(0xFF9EBCD3),
      onSecondary: Color(0xFF9EBCD3),
      error: Color(0xFFA99B9C),
      onError: Color(0xFF676F75),
      surface: Color(0xFFA99B9C),
      onSurface: Colors.red,
      inversePrimary: Colors.white,
      inverseSurface: Colors.grey,
      outline: Color(0xFFF33A44),
      shadow: Colors.black,
      tertiary: Color(0xFFA99B9C),
      surfaceBright: Color(0xFFF32736),
      surfaceContainer: Color(0xFFF32736),
      surfaceContainerHigh: Color(0xFFE8E4E4),
      surfaceContainerHighest: Color(0xFFE8E4E4),

      onInverseSurface: Colors.black87,
    );
  }

  static ColorScheme dark() {
    return const ColorScheme(
      brightness: Brightness.dark,
      errorContainer: Colors.white,
      onTertiary: Colors.black,
      primary: Color(0xFFEC0909),
      onPrimary: Color(0xFF590606),
      secondary: Colors.black,
      onSecondary: Color(0xff1A0202),
      error: Color(0xFF3F0306),
      onError: Color(0xFF090909),
      surface: Color(0xff440303),
      onSurface: Colors.red,
      inversePrimary: Colors.black87,
      inverseSurface: Colors.grey,
      outline: Color(0xFF3F0306),
      shadow: Colors.grey,
      tertiary: Color(0xFF480404),
      surfaceBright: Color(0xFF2F0505),
      surfaceContainer: Color(0xFFEC0909),
      surfaceContainerHigh: Color(0xFF590606),
      surfaceContainerHighest: Colors.transparent,
      onInverseSurface: Colors.grey,
    );
  }
}
