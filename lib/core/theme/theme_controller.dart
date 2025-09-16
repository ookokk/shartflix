import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/env/app_env.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/theme/app_themes.dart';

class ThemeController extends StateNotifier<ThemeData> {
  ThemeController() : super(AppThemes().darkTheme) {
    loadTheme();
  }

  final _currentTheme = AppThemes().darkTheme;
  ThemeData get currentTheme => _currentTheme;

  void toggleTheme(String theme) {
    _updateCurrentTheme(theme);
    CacheManager.instance.setThemeMode(theme);
  }

  void _updateCurrentTheme(String theme) {
    switch (theme) {
      case AppEnv.lightTheme:
        state = AppThemes().lightTheme;
      case AppEnv.darkTheme:
        state = AppThemes().darkTheme;
      default:
        state = AppThemes().darkTheme;
    }
  }

  Future<void> loadTheme() async {
    final savedTheme =
        await CacheManager.instance.getTheme() ?? AppEnv.darkTheme;

    _updateCurrentTheme(savedTheme);
  }
}

final themeProvider =
    StateNotifierProvider.autoDispose<ThemeController, ThemeData>((ref) {
      return ThemeController();
    });
