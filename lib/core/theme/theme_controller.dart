import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/theme/dark_theme_manager.dart';
import 'package:shartflix/core/theme/light_theme_manager.dart';

final themeProvider = ChangeNotifierProvider<ThemeController>((ref) {
  final controller = ThemeController()..loadTheme();
  return controller;
});

class ThemeController extends ChangeNotifier {
  ThemeController() {
    _updateCurrentTheme();
  }

  ThemeMode _themeMode = ThemeMode.system;
  final _lightTheme = LightThemeManager().themeData;
  final _darkTheme = DarkThemeManager().themeData;

  late ThemeData currentTheme;

  ThemeMode get themeMode => _themeMode;

  ThemeData get lightTheme => _lightTheme;

  ThemeData get darkTheme => _darkTheme;

  void _updateCurrentTheme() {
    switch (_themeMode) {
      case ThemeMode.light:
        currentTheme = _lightTheme;
      case ThemeMode.dark:
        currentTheme = _darkTheme;
      case ThemeMode.system:
        final brightness = WidgetsBinding.instance.window.platformBrightness;
        currentTheme = brightness == Brightness.dark ? _darkTheme : _lightTheme;
    }
  }

  Future<void> loadTheme() async {
    final savedTheme = await CacheManager.instance.getThemeMode();
    if (savedTheme != null) {
      _themeMode = savedTheme;
      _updateCurrentTheme();
      notifyListeners();
    }
  }

  Future<void> setTheme(ThemeMode mode) async {
    _themeMode = mode;
    _updateCurrentTheme();
    await CacheManager.instance.setThemeMode(mode);
    notifyListeners();
  }

  Future<void> useSystemTheme() async => setTheme(ThemeMode.system);
}
