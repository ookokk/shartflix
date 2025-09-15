import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final class CacheManager {
  CacheManager._init();
  static final CacheManager _instance = CacheManager._init();
  static CacheManager get instance => _instance;

  final _storage = const FlutterSecureStorage();

  static const String _tokenKey = 'jwt_token';

  Future<void> setToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return _storage.read(key: _tokenKey);
  }

  Future<void> clearToken() async {
    await _storage.delete(key: _tokenKey);
  }

  Future<void> clearCache() async {
    await _storage.deleteAll();
  }
}
