import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  ThemeData get themeData => Theme.of(this);

  TextTheme get textTheme => themeData.textTheme;
  ColorScheme get colorScheme => themeData.colorScheme;

  Size get size => MediaQuery.sizeOf(this);
  MediaQueryData get media => MediaQuery.of(this);
  double get screenHeight => size.height;
  double get screenWidth => size.width;
}
