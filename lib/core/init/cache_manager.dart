import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final class CacheManager {
  CacheManager._init();
  static final CacheManager _instance = CacheManager._init();
  static CacheManager get instance => _instance;

  final _storage = const FlutterSecureStorage();
  static const String tokenKey = 'jwt_token';
  static const String themeKey = 'theme_mode';

  Future<void> setToken(String token) async {
    await _storage.write(key: tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return _storage.read(key: tokenKey);
  }

  Future<void> clearToken() async {
    await _storage.delete(key: tokenKey);
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    await _storage.write(key: themeKey, value: mode.index.toString());
  }

  Future<ThemeMode?> getThemeMode() async {
    final value = await _storage.read(key: themeKey);
    if (value == null) return null;

    final index = int.tryParse(value);
    if (index == null || index < 0 || index >= ThemeMode.values.length) {
      return null;
    }
    return ThemeMode.values[index];
  }

  Future<void> clearTheme() async {
    await _storage.delete(key: themeKey);
  }

  Future<void> clearCache() async {
    await _storage.deleteAll();
  }
}
