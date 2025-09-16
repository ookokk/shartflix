import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheManager {
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

  Future<void> setThemeMode(String theme) async {
    await _storage.write(key: themeKey, value: theme);
  }

  Future<String?> getTheme() {
    return _storage.read(key: themeKey);
  }

  Future<void> clearTheme() async {
    await _storage.delete(key: themeKey);
  }

  Future<void> clearCache() async {
    await _storage.deleteAll();
  }
}
