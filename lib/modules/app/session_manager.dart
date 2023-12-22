import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SessionManager {
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static const String _keyLoggedIn = 'isLoggedIn';
  static const String _keyUsername = 'username';
  static const String _selectedVehicles = 'selectedVehicles';
  // Ajoutez d'autres clés selon vos besoins

  static Future<void> setLoggedIn(bool value) async {
    await _storage.write(key: _keyLoggedIn, value: value.toString());
  }

  static Future<bool> isLoggedIn() async {
    String? value = await _storage.read(key: _keyLoggedIn);
    return value == 'true';
  }

  static Future<void> setUsername(String username) async {
    await _storage.write(key: _keyUsername, value: username);
  }

  static Future<String?> getUsername() async {
    return await _storage.read(key: _keyUsername);
  }

  static Future<void> setVehicle(String selectedVehicle) async {
    await _storage.write(key: _keyUsername, value: _selectedVehicles);
  }

  static Future<String?> getVehicle() async {
    return await _storage.read(key: _selectedVehicles);
  }

  // Ajoutez d'autres méthodes pour stocker/récupérer d'autres informations de session
}
