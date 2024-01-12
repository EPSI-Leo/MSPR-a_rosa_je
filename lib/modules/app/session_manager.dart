import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SessionManager {
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static const String _keyLoggedIn = 'isLoggedIn';
  static const String _keyID = 'id';
  // Ajoutez d'autres clés selon vos besoins

  static Future<void> setLoggedIn(bool value) async {
    await _storage.write(key: _keyLoggedIn, value: value.toString());
  }

  static Future<bool> isLoggedIn() async {
    String? value = await _storage.read(key: _keyLoggedIn);
    return value == 'true';
  }

  static Future<void> setId(String username) async {
    await _storage.write(key: _keyID, value: username);
  }

  static Future<String?> getId() async {
    return await _storage.read(key: _keyID);
  }
}
